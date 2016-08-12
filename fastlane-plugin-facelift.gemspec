# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/facelift/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-facelift'
  spec.version       = Fastlane::Facelift::VERSION
  spec.author        = %q{Richard Szalay}
  spec.email         = %q{richard@richardszalay.com}

  spec.summary       = %q{Deprecated in favor of 'fastlane-plugin-act'}
  spec.homepage      = "https://github.com/richardszalay/fastlane-plugin-facelift"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.post_install_message = <<-MESSAGE
!    The 'fastlane-plugin-facelift' gem has been deprecated and has been replaced by 'fastlane-plugin-act'.
!    See: https://rubygems.org/gems/fastlane-plugin-act
!    And: https://github.com/richardszalay/fastlane-plugin-act
MESSAGE

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.99.0'
end
