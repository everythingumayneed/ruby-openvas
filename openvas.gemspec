# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openvas/version'

Gem::Specification.new do |s|
  s.name        = 'openvas'
  s.version     = Openvas::VERSION
  s.summary     = 'Openvas API Client (OMP 7.0)'
  s.description = 'Easily interface with the Openvas API OMP 7.0'
  s.authors     = ['Florian Wininger']
  s.email       = 'fw.centrale@gmail.com'
  s.homepage    = 'https://github.com/Cyberwatch/ruby-openvas'

  s.license       = 'MIT'

  s.require_paths = ['lib']
  s.files         = `git ls-files -z`.split("\x0")
  # s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency 'nokogiri', '~> 1.8'

  s.add_development_dependency 'bundler', '~> 1.16'
  s.add_development_dependency 'rake', '~> 12.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '~> 0.52'
end
