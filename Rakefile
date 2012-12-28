require 'rake'
require 'rake/clean'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'
require 'sinatra'

CLEAN.include('feature_tests.html')

RSpec::Core::RakeTask.new(:spec)

namespace :cucumber do
    Cucumber::Rake::Task.new(:features) do |t|
        tags = ENV['CUCUMBER_TAGS']
        t.cucumber_opts = ['--profile', 'default']
    end
end
task :server do
  require File.expand_path(File.dirname(__FILE__) + '/app/vending_machine_controller.rb')
  VendingMachineController.run!
end

task :default => [:spec,  'cucumber:features']
