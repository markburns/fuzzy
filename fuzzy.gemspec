# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fuzzy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Burns"]
  gem.email         = ["markthedeveloper@gmail.com"]
  gem.description   = %q{Force ruby to use common sense instead of being so pedantic}
  gem.summary       = %q{Fuzzy matching no method missing at last!!!!}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "fuzzy"
  gem.require_paths = ["lib"]
  gem.version       = Fuzzy::VERSION
end
