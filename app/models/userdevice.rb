require 'composite_primary_keys'

class Userdevice < ActiveRecord::Base
  set_primary_keys :user_id, :userdevice_device_type
  
  belongs_to :user, :foreign_key => "user_id"
end
