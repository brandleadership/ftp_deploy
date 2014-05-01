# Install

Add this line to yuor Gemfile:

    gem "ftp_deploy"

Then run "bundle install"

# Configuration

Define your staging configs inside a file called 'ftp_deploy.yml' or
'ftp_deploy.yml.erb'

    staging:
      host: 'test.host.com'
      user: 'root'
      password: 'root'
      base_dir: './site'
      remote_base_dir: '/var/www/test.host.com' # optional, defaults to user home
      rewrite_base: '.' # depending on rewrite setting, this must be an absolute path

# Running

    ftp_deploy deploy staging
    ftp_deploy deploy production


# TODO
- rollbacks
