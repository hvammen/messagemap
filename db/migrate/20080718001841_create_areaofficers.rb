class CreateAreaofficers < ActiveRecord::Migration
  def self.up
    create_table :areaofficers do |t|
      t.integer :area_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :areaofficers
  end
end
