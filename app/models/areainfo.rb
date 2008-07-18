require 'composite_primary_keys'

class Areainfo < ActiveRecord::Base
  set_primary_keys :area_id, :areainfo_name, :user_id

  belongs_to :user, :foreign_key => "user_id"
  belongs_to :area, :foreign_key => "area_id"
end
