require 'thor'
require 'ftp_deploy'

module FtpDeploy
  
  class CLI < Thor
    
    desc 'deploy [STAGE]', 'deploys all the content in your base_dir to [STAGE]'
    method_options :stage => "staging"
    
    def deploy(stage)
      FtpDeploy.env(stage) do
        connect! do
          upload_release!
        end
      end
    end
  end
  
end