# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ftp_deploy/version"

Gem::Specification.new do |s|
  s.name        = "ftp_deploy"
  s.version     = FtpDeploy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Immanuel Häussermann"]
  s.email       = ["immanuel.haeussermann@screenconcept.ch"]
  s.homepage    = "http://rubygems.org/gems/ftp_deploy"
  s.summary     = %q{Simple deployment via FTP}
  s.description = %q{Many users have sites hosted on shared hosts, where SSH is not available. Therefore, you can not use the wonderful capistrano for deployment. ftp_deploy lets you do static ftp deployment the easy way.}

  s.rubyforge_project = "ftp_deploy"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rspec", "~> 2.3.0"
  s.add_development_dependency "autotest"
  s.add_dependency "activesupport", "~> 3.0.0"
  s.add_dependency "thor"
end