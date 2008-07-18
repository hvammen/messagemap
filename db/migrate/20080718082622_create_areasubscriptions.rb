class CreateAreasubscriptions < ActiveRecord::Migration
  def self.up
    create_table :areasubscriptions do |t|
      t.string :areasubscription_name
      t.integer :area_id
      t.integer :user_id
      t.string :areasubscription_circle
      t.integer :areasubscription_rating
      t.boolean :areasubscription_notify

      t.timestamps
    end
  end

  def self.down
    drop_table :areasubscriptions
  end
end
