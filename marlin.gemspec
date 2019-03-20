$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "marlin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'marlin'
  s.version     = Marlin::VERSION
  s.authors     = ['Ilya Kovalenko']
  s.email       = ['to@ilyakovalenko.com']
  s.homepage    = 'https://github.com/ilyacoding/marlin'
  s.summary     = 'Marlin'
  s.description = 'Marlin is highly available key-value storage. Supports both in memory storage and redis.'

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency 'sinatra', '~> 2.0.5'
  s.add_dependency 'foreman', '~> 0.85.0'
  s.add_dependency 'redis', '~> 4.1.0'
end
