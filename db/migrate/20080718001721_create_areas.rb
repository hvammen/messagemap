class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.integer :area_user_id
      t.string :area_point
      t.boolean :area_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
