# -*- encoding: utf-8 -*-
require File.expand_path('../lib/inspect-mustache/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ravi Mugdha"]
  gem.email         = ["mugdha410@gmail.com"]
  gem.description   = %q{Inspect mustache template location}
  gem.summary       = %q{Inspect file location from UI}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inspect-mustache"
  gem.require_paths = ["lib"]
  gem.version       = Inspect::Mustache::VERSION
  gem.add_dependency "railties", "~> 3.1"
end
