# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails4PrimeStack::Application.load_tasks

### churn
require 'churn'
### end churn

### rubocop
require 'rubocop/rake_task'

Rubocop::RakeTask.new( :rubocop, ' --rails ' )
### end rubocop

### reek
require 'reek/rake/task'

Reek::Rake::Task.new do |t|
    t.fail_on_error = false
end
### end reek

### cane
require 'cane/rake_task'

desc "Run cane to check quality metrics"
Cane::RakeTask.new(:quality) do |cane|
  cane.abc_max = 10
  cane.add_threshold 'coverage/covered_percent', :>=, 90
  cane.no_style = true
  cane.canefile = '.cane'
  #cane.abc_exclude = %w(Foo::Bar#some_method)
end
### end cane
