require 'composite_primary_keys'

class Userfriend < ActiveRecord::Base
  set_primary_keys :userfriend_id_me, :userfriend_id_myfriend
  
  belongs_to :user, :foreign_key => "userfriend_id_me"
  belongs_to :user, :foreign_key => "userfriend_id_myfriend"
end
