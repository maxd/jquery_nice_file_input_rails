# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery_nice_file_input_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery_nice_file_input_rails"
  spec.version       = JqueryNiceFileInputRails::VERSION
  spec.authors       = ["Maxim Dobryakov"]
  spec.email         = ["maxim.dobryakov@gmail.com"]
  spec.description   = %q{jQuery-Nice-File-Input asset bundle for Rails}
  spec.summary       = %q{jQuery-Nice-File-Input asset bundle for Rails 3.2.x/4.0.x}
  spec.homepage      = "https://github.com/maxd/jquery_nice_file_input_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
