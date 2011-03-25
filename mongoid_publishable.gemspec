# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_publishable/version"

Gem::Specification.new do |s|
  s.name        = "mongoid_publishable"
  s.version     = MongoidPublishable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicholas Bruning"]
  s.email       = ["nicholas@bruning.com.au"]
  s.homepage    = ""
  s.summary     = %q{A simple gem to make your models publishable.}
  s.description = %q{This gem adds some fields, scopes and methods to simplify and declutter your publishable models.}

  s.rubyforge_project = "mongoid_publishable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
