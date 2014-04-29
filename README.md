# Install

Add this line to yuor Gemfile:

    gem "ftp_deploy"

Then run "bundle install"

# Configuration

Define your staging configs inside a file called 'ftp_deploy.yml'

    staging:
      host: 'test.host.com'
      user: 'root'
      password: 'root'
      base_dir: './site'
      remote_base_dir: '/var/www/test.host.com' # optional, defaults to user home

# Running

    ftp_deploy deploy staging
    ftp_deploy deploy production


# TODO
- rollbacks
