class CreateAreatags < ActiveRecord::Migration
  def self.up
    create_table :areatags do |t|
      t.string :tag_name
      t.integer :area_id

      t.timestamps
    end
  end

  def self.down
    drop_table :areatags
  end
end
