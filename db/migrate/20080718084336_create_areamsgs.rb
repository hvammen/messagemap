class CreateAreamsgs < ActiveRecord::Migration
  def self.up
    create_table :areamsgs do |t|
      t.integer :areamsg_id
      t.integer :areamsg_thread_id
      t.integer :user_id
      t.integer :area_id
      t.text :areamsg_message
      
      t.timestamps
    end
  end

  def self.down
    drop_table :areamsgs
  end
end