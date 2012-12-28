require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'sinatra'

RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :feature

task :specs => :spec
task :features => :feature

task :server do
  require File.expand_path(File.dirname(__FILE__) + '/app/vending_machine_controller.rb')
  VendingMachineController.run!
end

task :default => [:spec, :feature]
