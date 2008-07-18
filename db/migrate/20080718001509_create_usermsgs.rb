class CreateUsermsgs < ActiveRecord::Migration
  def self.up
    create_table :usermsgs do |t|
      t.integer :user_id_me
      t.integer :user_id_myfriend
      t.text :usermsg_message

      t.timestamps
    end
  end

  def self.down
    drop_table :usermsgs
  end
end
