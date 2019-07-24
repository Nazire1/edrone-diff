lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_edrone/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_edrone'
  s.version     = SpreeEdrone.version
  s.summary     = 'Adds edrone integration with Spree'
  s.description = 'Supports Edrone'
  s.required_ruby_version = '>= 2.2.7'

  s.author    = 'edrone'
  s.email     = 'admin@edrone.me'
  s.homepage  = 'https://edrone.me'
  s.license = 'MIT'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 3.1.0', '< 5.0'
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'chromedriver-helper'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
end