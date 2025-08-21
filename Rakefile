require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc "Run tests"
task :test => :spec

desc "Start test server"
task :server do
  Dir.chdir('spec/request') do
    exec 'rackup config.ru'
  end
end