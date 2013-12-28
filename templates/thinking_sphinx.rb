inject_into_file 'Gemfile', after: "### application specific\n" do
"
### thinking shinx
gem ' thinking-sphinx'
### end thinking shinx
"
end

run 'bundle install'

rake('ts:configure')

FileUtils.mkdir 'app/indices'

### capistrano
prepend_file 'config/deploy.rb', "require 'thinking_sphinx/capistrano'"

## sidekiq workers
create_file 'app/workers/ts_index_worker.rb' do
"
require 'rake'
class TsIndexWorker
  include Sidekiq::Worker
  def perform(name, count)
    Rake.application['ts:index'].invoke
  end
end
TsIndexWorker.perform_async('hinking Sphinx indexing', 5)
Sidekiq::Cron::Job.create( name: 'Thinking Sphinx index worker - every 5min', cron: '*/5 * * * *', klass: 'TsRebuild')
"
end

create_file 'app/workers/ts_rebuild_worker.rb' do
"
require 'rake'
class TsRebuildWorker
  include Sidekiq::Worker
  def perform(name, count)
    Rake.application['ts:rebuild'].invoke
  end
end
Sidekiq::Cron::Job.create( name: 'Thinking Sphinx index rebuild worker - every 5min', cron: '*/5 * * * *', klass: 'TsRebuild')
"
end

git commit: "-a -n -m 'added thinking_sphinx'"
