require 'composite_primary_keys'

class Areasubscription < ActiveRecord::Base
  set_primary_keys :areasubscriptiont_name, :area_id, :user_id
  
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :area, :foreign_key => "area_id"
end
