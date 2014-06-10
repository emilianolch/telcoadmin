class InsertAdminUser < ActiveRecord::Migration
  def self.up
    User.create(:login => 'admin', :password => 'admin', :password_confirmation => 'admin')
  end

  def self.down
  end
end
