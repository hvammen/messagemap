class Area < ActiveRecord::Base
  belongs_to :user, :foreign_key => "area_user_id"
  
  has_many :areaofficers
  has_many :areatags
end
