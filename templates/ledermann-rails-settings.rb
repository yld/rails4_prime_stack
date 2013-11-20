inject_into_file 'Gemfile', after: "### application specific\n" do
"
gem 'ledermann-rails-settings', :require => 'rails-settings'
"
end

generate('rails_settings:migration')
rake("db:migrate")
git commit: "-a -n -m 'added ledermann-rails-settings'"

