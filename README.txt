Local installation, as long as it's in development and not hosted on rubygems

Checkout a copy of the source from git.
Inside your Gemfile:

gem "ftp_deploy", :path => "/path/to/source"

run "bundle install"

Example:

require 'rubygems'
require 'bundler'
Bundler.setup

require 'ftp_deploy'

FtpDeploy::Base.new do
  
  config do
    set :user, 'designer'
    set :host, '192.168.67.106'
    set :password, 'stuff123'
    set :remote_base_dir, './Sites/testing'
    set :base_dir, './upload'
  end
    
  connect! do |ftp|
    ftp.upload_release!
  end
end

TODO:

1. CLI interface
2. Woraround for Net/FTP not being able to move directories, therefore longer downtime between deploys. Workaround: write .htaccess on deploy and rewrite the DOCUMENT_ROOT
3. Staticmatic Integration