# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ftp_deploy/version"

Gem::Specification.new do |s|
  s.name        = "ftp_deploy"
  s.version     = FtpDeploy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = "http://rubygems.org/gems/ftp_deploy"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

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
