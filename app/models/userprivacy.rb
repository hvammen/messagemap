require 'composite_primary_keys'

class Userprivacy < ActiveRecord::Base
  set_primary_keys :user_id, :userprivacy_message_type, :userprivacy_friend_type
  
  belongs_to :user, :foreign_key => "user_id"
end
