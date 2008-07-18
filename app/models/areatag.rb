require 'composite_primary_keys'

class Areatag < ActiveRecord::Base
  set_primary_keys :tag_name, :area_id
  
  belongs_to :tag, :foreign_key => "tag_name"
  belongs_to :area, :foreign_key => "area_id"
end
