# -*- encoding: utf-8 -*-$:.push File.expand_path("../lib", __FILE__)
require './lib/sinatra/ad_version'

Gem::Specification.new do |s|
  s.name        = "sinatra_ad_auth"
  s.version     = Sinatra::ADAuth::VERSION
  s.authors     = ["Paolo Perego"]
  s.email       = ["thesp0nge@gmail.com"]
  s.homepage    = "http://armoredcode.com"
  s.summary     = %q{Sinatra extension to add authentication against a given active directory}
  s.description = %q{Sinatra extension to add authentication against a given active directory}

  s.rubyforge_project = "sinatra_ad_auth"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  # specify any dependencies here; for example:
  s.add_dependency "net-ldap"
  s.add_dependency "sinatra"
  s.add_development_dependency "net-ldap"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "sinatra"
end
