class CreateUserprivacies < ActiveRecord::Migration
  def self.up
    create_table :userprivacies do |t|
      t.integer :user_id
      t.string :userprivacy_friend_type
      t.string :userprivacy_value

      t.timestamps
    end
  end

  def self.down
    drop_table :userprivacies
  end
end
