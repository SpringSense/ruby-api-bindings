# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "springsense-ruby/version"

Gem::Specification.new do |s|
  s.name        = "springsense-ruby"
  s.version     = Springsense::Ruby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "springsense-ruby"

  s.add_dependency "json"
  s.add_dependency('activesupport', '>= 3.0.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
