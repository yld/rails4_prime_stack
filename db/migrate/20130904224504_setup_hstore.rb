# this method will raise error if user is not a superadmin, a thing that he should not be
class SetupHstore < ActiveRecord::Migration
  def self.up
    enable_extension 'hstore'
    #execute 'CREATE EXTENSION IF NOT EXISTS hstore'
  end

  def self.down
    disable_extension 'hstore'
    #execute 'DROP EXTENSION IF EXISTS hstore'
  end
end
