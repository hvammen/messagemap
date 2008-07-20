class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :user_name, :null => false
      t.string   :user_username, :unique => true, :null => false
      t.string   :user_password, :null => false
      t.string   :user_email, :null => false
      t.string   :user_about
      t.string   :user_website
      t.string   :user_phone
      t.string   :user_sex, :null => false
      t.string   :user_birth, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end