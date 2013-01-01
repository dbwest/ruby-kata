$LOAD_PATH << './lib'

require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'sinatra'

require 'calculator'

RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :cucumber

task :start_server do
  $sinatra = Thread.new do
    set :public_folder, 'lib/public'
    set :views, 'lib/views'
    Sinatra::Application.run!
  end
  sleep 5 # give the server 5 seconds to start 
end

task :kill_server do
  puts "Killing Sinatra..."
  Thread.kill $sinatra
end

task :feature => [:start_server, :cucumber, :kill_server]

task :specs => :spec
task :features => :feature

task :default => [:spec, :feature]
