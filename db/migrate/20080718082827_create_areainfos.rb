class CreateAreainfos < ActiveRecord::Migration
  def self.up
    create_table :areainfos do |t|
      t.integer :area_id
      t.string :areainfo_name
      t.integer :user_id
      t.string :areainfo_value_str
      t.string :areainfo_value_url
      t.integer :areainfo_value_int

      t.timestamps
    end
  end

  def self.down
    drop_table :areainfos
  end
end
