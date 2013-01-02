$LOAD_PATH << 'lib'

require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'sinatra'

RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :feature

desc "Starts the Sinatra server"
task :server do
  require 'calculator'
  Sinatra::Application.run!
end

desc "Run RSpec code examples"
task :specs => :spec

desc "Run Cucumber features"
task :features => :feature

desc "Run RSpec cpode examples and the Cucumber features"
task :default => [:spec, :feature]
