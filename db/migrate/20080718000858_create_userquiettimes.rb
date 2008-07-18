class CreateUserquiettimes < ActiveRecord::Migration
  def self.up
    create_table :userquiettimes do |t|
      t.integer :user_id
      t.datetime :userquiettime_start
      t.datetime :userquiettime_end
      t.integer :userquiettime_timezone
      t.boolean :userquiettime_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :userquiettimes
  end
end
