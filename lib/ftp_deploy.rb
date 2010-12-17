require 'ftp_deploy/base'
require 'ftp_deploy/configuration'
require 'pp'

module FtpDeploy
  
  def self.env stage, &block
    Base.new(load_config[stage.to_s]).instance_eval &block
  end
  
  def self.load_config file = nil
    file ||= Dir['**/ftp_deploy.yml'].first || ''
    config = {}
    
    if File.exists?(file)
      config = YAML.load_file(file)
    end
    
    config
  end
  
end