if Rails.env.development?
  I18n::Tasks.get_locale_data = ->(locale) {
  #I18n::Tasks.get_locale_data = lambda(locale) {
    ( ["config/locales/#{locale}.yml"] + Dir["config/locales/*.#{locale}.yml"] ).inject({}) do |hash, path|
      hash.deep_merge! YAML.load_file(path)
      hash
    end
  }
end
