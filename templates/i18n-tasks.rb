inject_into_file 'Gemfile', after: "### forms and i18n\n" do
"
gem 'i18n-tasks'
"
end

inject_into_file 'spec/spec_helper.rb', after: "require 'rubygems'\n" do
"

require 'i18n/tasks'
require 'i18n/tasks/base_task'
"
end

create_file 'spec/locales_spec.rb' do
"
require 'spec_helper'
describe 'translations'  do
  let(:i18n) { I18n::Tasks::BaseTask.new }

  it 'are all used' do
    i18n.unused_keys.should have(0).keys
  end

  it 'are all present' do
    i18n.untranslated_keys.should have(0).keys
  end
end
"
end
