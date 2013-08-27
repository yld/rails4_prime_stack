# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

H2ts3::Application.load_tasks
#require 'i18n-spec/tasks'
#
require 'churn'

require 'rubocop/rake_task'

Rubocop::RakeTask.new( :rubocop, ' --rails ' )
