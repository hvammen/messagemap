class CreateUsertags < ActiveRecord::Migration
  def self.up
    create_table :usertags do |t|
      t.string  :usertag_name
      t.integer :user_id
      t.string  :usertag_type

      t.timestamps
    end
  end

  def self.down
    drop_table :usertags
  end
end
