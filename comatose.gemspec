# -*- encoding: utf-8 -*-
require File.expand_path('../lib/comatose/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["M@ McCray", "kookster"]
  gem.email         = ["matt@elucidata.net", "andrew@beginsinwonder.com"]
  gem.description   = "Comatose is a micro CMS designed for being embedded into existing Rails 3 applications."
  gem.summary       = "Micro CMS designed for being embedded into existing Rails 3 applications"
  gem.homepage      = "http://comatose.rubyforge.org"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "comatose"
  gem.require_paths = ["lib"]
  gem.version       = Comatose::VERSION

  gem.add_dependency("acts_as_tree_rails3")
  gem.add_dependency("acts_as_versioned")
  gem.add_dependency("dynamic_form")
  gem.add_dependency("liquid")
  gem.add_dependency("RedCloth")
end
