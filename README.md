# Install

Add to your Gemfile:

    gem "ftp_deploy"

run

    bundle install

## Setup a config

Define your staging configs inside a file called 'ftp_deploy.yml'

    staging:
      host: 'test.host.com'
      user: 'root'
      password: 'root'
      base_dir: './site'
      remote_base_dir: '/var/www/test.host.com' // optional, defaults to user home

Example:

    ftp_deploy deploy staging
    ftp_deploy deploy production

TODO:
- rollbacks
