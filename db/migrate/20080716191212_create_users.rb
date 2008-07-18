class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :name, :null => false
      t.string   :user_name, :unique => true, :null => false
      t.string   :password, :null => false
      t.string   :email, :null => false
      t.string   :about
      t.string   :website
      t.string   :phone
      t.string   :sex, :null => false
      t.string   :birth, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end