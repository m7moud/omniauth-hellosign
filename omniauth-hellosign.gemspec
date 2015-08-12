# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-hellosign/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.3', '>= 1.3.1'
  gem.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.0'

  gem.authors           = ["Mahmoud Ali"]
  gem.email             = ["m7moud.said@gmail.com"]
  gem.summary           = %q{HelloSign strategy for OmniAuth.}
  gem.description       = %q{HelloSign OAuth 2.0 strategy for OmniAuth.}
  gem.homepage          = "https://github.com/m7moud/omniauth-hellosign"
  gem.license           = "MIT"

  gem.executables       = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files             = `git ls-files`.split("\n")
  gem.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name              = "omniauth-hellosign"
  gem.require_paths     = ["lib"]
  gem.version           = OmniAuth::HelloSign::VERSION
end
