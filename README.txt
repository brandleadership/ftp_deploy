Local installation, as long as it's in development and not hosted on rubygems

Checkout a copy of the source from git.
Inside your Gemfile:

gem "ftp_deploy", :path => "/path/to/source"

run "bundle install"

Example:

ftp_deploy deploy staging
ftp_deploy deploy production

Define your staging configs inside a file called 'ftp_deploy.yml'

staging:
  host: 'test.host.com'
  user: 'root'
  password: 'root'
  base_dir: './site'
  remote_base_dir: '/var/www/test.host.com' // optional, defaults to user home

TODO:

1. Woraround for Net/FTP not being able to move directories, therefore longer downtime between deploys. Workaround: write .htaccess on deploy and rewrite the DOCUMENT_ROOT
2. Staticmatic Integration