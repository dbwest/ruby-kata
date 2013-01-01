require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'sinatra'
require 'app/vendingmachine'

RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :feature

task :specs => :spec
task :features => :feature

task :server do
  Sinatra::Application.run!
end

task :default => [:spec, :feature]
