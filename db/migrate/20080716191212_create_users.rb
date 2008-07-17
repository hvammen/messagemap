class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :login
      t.string   :email
      t.string   :password
      t.string   :country
      t.string   :picture
      t.string   :settings
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
