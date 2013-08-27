# A sample Guardfile
# More info at https://github.com/guard/guard#readme


#guard 'zeus', bundler: false do
#  # uses the .rspec file
#  # --colour --fail-fast --format documentation --tag ~slow
#  watch(%r{^spec/.+_spec\.rb$})
#  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
#  watch(%r{^app/(.+)\.haml$})                         { |m| "spec/#{m[1]}.haml_spec.rb" }
#  watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
#  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
#
#  # TestUnit
#  # watch(%r|^test/(.*)_test\.rb$|)
#  # watch(%r|^lib/(.*)([^/]+)\.rb$|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
#  # watch(%r|^test/test_helper\.rb$|)    { "test" }
#  # watch(%r|^app/controllers/(.*)\.rb$|) { |m| "test/functional/#{m[1]}_test.rb" }
#  # watch(%r|^app/models/(.*)\.rb$|)      { |m| "test/unit/#{m[1]}_test.rb" }
#end

group :metrics do

  guard 'brakeman', run_on_start: true do
    watch(%r{^app/.+\.(erb|haml|rhtml|rb)$})
    watch(%r{^config/.+\.rb$})
    watch(%r{^lib/.+\.rb$})
    watch('Gemfile')
  end

  guard 'rails_best_practices' do
    watch(%r{^app/(.+)\.rb$})
  end

  guard 'reek' do
    watch(%r{.+\.rb$})
  end

# verify that application Javascript files are lintable
# see https://github.com/psionides/jslint_on_rails
  guard 'jslint-on-rails' do
    # watch for changes to application javascript files
    watch(%r{^app/assets/javascripts/.*\.js$})
    # watch for changes to the JSLint configuration
    watch('config/jslint.yml')
  end

  guard :rubocop do
    watch(%r{.+\.rb$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end

end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+\.gemspec/)
end

guard 'coffeescript', :input => 'app/assets/javascripts'

guard 'ctags-bundler', src_path: ["app", "lib", "spec/support"] do
  watch(/^(app|lib|spec\/support)\/.*\.rb$/)
  watch('Gemfile.lock')
end

guard 'cucumber', command_prefix: 'zeus 'do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'migrate' do
  watch(%r{^db/migrate/(\d+).+\.rb})
  watch('db/seeds.rb')
end


guard 'rails' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end


# Possible options are :port, :executable, :pidfile, :reload_on_change, :capture_logging, :logfile, :shutdown_retries, :shutdown_wait

# Default implementation - starts Redis on standard port and stops on exit
#guard 'redis'

# Use 'redis-server' as the executable, put a PID file in the local tmp directory, run on port 6379, and reload
# Redis when any Ruby file changes in the app, lib, or config directories.
#
# guard 'redis', :executable => 'redis-server', :pidfile => 'tmp/pids/redis.pid', :port => 6379, :reload_on_change => true do
#   watch(/^(app|lib|config)\/.*\.rb$/)
# end

# Same as above - also enable Redis logging and 3 shutdown retries spaced 5 seconds apart
#
guard 'redis', :executable => '/usr/sbin/redis-server', :pidfile => 'tmp/pids/redis.pid', :port => 6379, :reload_on_change => true, :capture_logging => true, :logfile => 'log/redis.log', :shutdown_retries => 3, :shutdown_wait => 5 do
  watch(/^(app|lib|config)\/.*\.rb$/)
end

guard :rspec, zeus: true, cli: '--color --format nested --fail-fast --drb' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  # Capybara features specs
  watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$})     { |m| "spec/features/#{m[1]}_spec.rb" }

  # Turnip features and steps
  watch(%r{^spec/acceptance/(.+)\.feature$})
  watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
end

guard :yaml do
  watch(%r{^config/(.*).yml})
end

### Guard::Sidekiq
#  available options:
#  - :verbose
#  - :queue (defaults to "default") can be an array
#  - :concurrency (defaults to 1)
#  - :timeout
#  - :environment (corresponds to RAILS_ENV for the Sidekiq worker)
guard 'sidekiq', :environment => 'development' do
  watch(%r{^workers/(.+)\.rb$})
end

guard 'sass', :input => 'sass', :output => 'css'
