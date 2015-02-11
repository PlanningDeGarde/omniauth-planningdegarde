# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-planningdegarde/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Etienne Depaulis"]
  gem.email         = ["contact@planning-de-garde.fr"]
  gem.description   = "An Omniauth Strategy for Planning de garde"
  gem.summary       = "An Omniauth Strategy for Planning de garde"
  gem.homepage      = "https://github.com/leppert/omniauth-planningdegarde"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-planningdegarde"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Planningdegarde::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
end
