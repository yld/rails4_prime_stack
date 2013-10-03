require 'zeus/rails'

class CustomPlan < Zeus::Rails

  def sidekiq
    require 'sidekiq/cli'

    begin
      cli = Sidekiq::CLI.instance
      cli.parse
      cli.run
    rescue => e
      raise e if $DEBUG
      STDERR.puts e.message
      STDERR.puts e.backtrace.join("\n")
      exit 1
    end
  end
  # def my_custom_command
  #  # see https://github.com/burke/zeus/blob/master/docs/ruby/modifying.md
  # end

  def test
    require 'factory_girl'
    FactoryGirl.reload
    Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
    super
  end

end

Zeus.plan = CustomPlan.new
