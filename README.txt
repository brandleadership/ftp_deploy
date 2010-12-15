Local installation, as long as it's in development and not hosted on rubygems

Checkout a copy of the source from git.
Inside your Gemfile:

gem "ftp_deploy", :path => "/path/to/source"


TODO:

1. CLI interface
2. Woraround for Net/FTP not being able to move directories, therefore longer downtime between deploys. Workaround: write .htaccess on deploy and rewrite the DOCUMENT_ROOT
3. Staticmatic Integration

