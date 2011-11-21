# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "proto/version"

Gem::Specification.new do |s|
  s.name        = "Protoform"
  s.version     = Proto::VERSION
  s.authors     = ["Christian Naths"]
  s.email       = ["christiannaths@gmail.com"]
  s.homepage    = "http://christiannaths.com"
  s.summary     = %q{A Sintatra Based Prototyping Framework}
  s.description = %q{This is a very simple framework build on top of Sinatra build for rapidly creating static website prototypes. It comes with a flexible SASS grid system and wireframe styles.}

  s.rubyforge_project = "Protoform"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("commander", '>= 4.0.4')
  s.add_dependency("sinatra", '>=1.3.1')
  s.add_dependency("sass", '>=3.1.7')
  s.add_dependency("haml", '>=3.1.2')
  s.add_dependency("coffee-script", '>=2.2.0')
end
