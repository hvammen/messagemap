class CreateUserdevicemsgtypes < ActiveRecord::Migration
  def self.up
    create_table :userdevicemsgtypes do |t|
      t.integer :user_id
      t.string :userdevicemsgtype_device_type
      t.string :userdevicemsgtype_message_type
      t.boolean :userdevicemsgtype_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :userdevicemsgtypes
  end
end
