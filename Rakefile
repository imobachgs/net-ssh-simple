require 'bundler/gem_tasks'
require 'bundler/setup'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

task :default => :test

RSpec::Core::RakeTask.new("test:spec") do |t|
    t.pattern = 'spec/*.rb'
    t.rspec_opts = '--fail-fast -b -c -f progress --tag ~benchmark'
end

RSpec::Core::RakeTask.new("test:benchmark") do |t|
    t.pattern = 'spec/*.rb'
    t.rspec_opts = '-b -c -f documentation --tag benchmark'
end

desc 'Run full test suite'
task :test => [ 'test:spec' ]

