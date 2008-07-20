class CreateUserdevices < ActiveRecord::Migration
  def self.up
    create_table :userdevices do |t|
      t.integer :user_id
      t.string :userdevice_device_type
      t.string :userdevice_username
      t.string :userdevice_password
      t.integer :userdevice_msglimit
      t.boolean :userdevice_enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :userdevices
  end
end
