class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.string :area_user_username
      t.float :area_point_lat
      t.float :area_point_lng
      t.float :area_point_rad
      t.boolean :area_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
