require 'rake/extensiontask'
require "bundler/gem_tasks"

spec = Gem::Specification.load('rembox.gemspec')


Rake::ExtensionTask.new('termbox', spec) do |ext|
end

Gem::PackageTask.new(spec) do |pkg|
end
