# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "net/ssh/simple/version"

Gem::Specification.new do |s|
  s.name        = "net-ssh-simple"
  s.version     = Net::SSH::Simple::VERSION
  s.authors     = ["Moe"]
  s.email       = ["moe@busyloop.net"]
  s.homepage    = "https://github.com/busyloop/net-ssh-simple"
  s.description = %q{Net::SSH::Simple is a simple wrapper around Net::SSH and Net::SCP.}
  s.summary     = %q{SSH without the headache}

  s.rubyforge_project = "net-ssh-simple"
  
  s.add_dependency "net-ssh", "~> 2.1.4"
  s.add_dependency "net-scp", "~> 1.0.4"
  s.add_dependency "blockenspiel", "~> 0.4.3"
  s.add_dependency "hashie", "~> 1.1.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "cover_me"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end