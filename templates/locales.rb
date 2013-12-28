inject_into_file 'Gemfile', after: "### i18n\n" do
"
gem 'rails-i18n'
"
end

run 'thor locales:complete'
run 'thor locales:incomplete'
run 'thor locales:list'
