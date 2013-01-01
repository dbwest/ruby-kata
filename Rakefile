$LOAD_PATH << './lib'

require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'sinatra'
require 'vendingmachine'

RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :feature

task :specs => :spec
task :features => :feature

task :server do
  set :public_folder, 'lib/public'
  set :views, 'lib/views'
  Sinatra::Application.run!
end

task :default => [:spec, :feature]
