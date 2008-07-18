require 'composite_primary_keys'

class Usertag < ActiveRecord::Base
  set_primary_keys :usertag_name, :user_id, :usertag_type
  
  belongs_to :user, :foreign_key => "user_id"
end
