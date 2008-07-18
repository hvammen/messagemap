class CreateUserfriends < ActiveRecord::Migration
  def self.up
    create_table :userfriends do |t|
      t.integer :userfriend_id_me
      t.integer :userfriend_id_myfriend
      t.string :userfriend_type

      t.timestamps
    end
  end

  def self.down
    drop_table :userfriends
  end
end
