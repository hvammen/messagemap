require 'composite_primary_keys'

class Userdevicemsgtype < ActiveRecord::Base
  set_primary_keys :user_id, :userdevicemsgtype_device_type, :userdevicemsgtype_message_type
  
  belongs_to :user, :foreign_key => "user_id"
end
