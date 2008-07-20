require 'composite_primary_keys'

class Usermsg < ActiveRecord::Base
  set_primary_keys :user_id_from, :user_id_to, :usermsg_message, :created_at
  
  belongs_to :user, :foreign_key => "user_id_me"
  belongs_to :user, :foreign_key => "user_id_myfriend"
end
