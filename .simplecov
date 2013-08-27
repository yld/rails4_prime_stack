SimpleCov.start 'rails' do
  # any custom configs like groups and filters can be here at a central place
  add_filter '/test/'
  add_filter '/spec/'
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"

end
