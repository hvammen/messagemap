class Areaofficer < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :area, :foreign_key => "area_id"
end
