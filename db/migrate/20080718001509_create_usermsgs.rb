class CreateUsermsgs < ActiveRecord::Migration
  def self.up
    create_table :usermsgs do |t|
      t.integer :user_id_from
      t.integer :user_id_to
      t.text :usermsg_message

      t.timestamps
    end
  end

  def self.down
    drop_table :usermsgs
  end
end
