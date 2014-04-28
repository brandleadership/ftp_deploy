require 'ftp_deploy/base'
require 'ftp_deploy/configuration'
require 'pp'
require 'yaml'
require 'erb'

module FtpDeploy
  
  def self.env stage, &block
    Base.new(load_config[stage.to_s]).instance_eval &block
  end
  
  def self.load_config file = nil
    file ||= Dir['**/ftp_deploy{.yml,.yml.erb}'].first || ''
    config = {}
    
    if File.exists?(file)
      if file =~ /.erb$/
        config = YAML.load(ERB.new(File.read(file)).result)
      else
        config = YAML.load_file(file)
      end
    end
    
    config
  end
  
end
