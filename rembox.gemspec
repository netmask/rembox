# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rembox/version'

s = Gem::Specification.new do |spec|
  spec.name          = "rembox"
  spec.version       = Termbox::VERSION
  spec.authors       = ["Jonathan Garay"]
  spec.email         = ["jonathan@devmask.net"]
  spec.description   = %q{Termbox bindings for ruby}
  spec.summary       = %q{Termbox bindings for ruby}
  spec.homepage      = "https://github.com/netmask/termbox_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.extensions << "ext/termbox/extconf.rb"

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rake"
end
