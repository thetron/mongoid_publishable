# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid/publishable/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_publishable"
  s.version     = Mongoid::Publishable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicholas Bruning"]
  s.email       = ["nicholas@bruning.com.au"]
  s.homepage    = "http://github.com/thetron/mongoid_publishable"
  s.summary     = %q{Add publishable behaviours to mongoid models.}
  s.description = %q{This gem adds some fields, scopes and methods to simplify and declutter your models that need to be drafted and published.}

  s.rubyforge_project = "mongoid_publishable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
