# -*- encoding: utf-8 -*-$:.push File.expand_path("../lib", __FILE__)
require "palco/version"
Gem::Specification.new do |s|
  s.name        = "ldap_auth"
  s.version     = Sinatra::LDAPAuth::VERSION
  s.authors     = ["Paolo Perego"]
  s.email       = ["thesp0nge@gmail.com"]
  s.homepage    = "add your project homepage"
  s.summary     = %q{write a great summary here}
  s.description = %q{write a great description here}

  s.rubyforge_project = "ldap_auth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  # specify any dependencies here; for example:
  s.add_dependency "net-ldap"
  s.add_development_dependency "net-ldap"
end
