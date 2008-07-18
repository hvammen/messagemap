class Area < ActiveRecord::Base
  set_primary_key :area_id
  
  belongs_to :user, :foreign_key => "area_user_id"
  
  has_many :areaofficers,      :foreign_key => [:area_id, :user_id]
  has_many :areatags,          :foreign_key => [:tag_name, :area_id]
  has_many :areasubscriptions, :foreign_key => [:areasubscriptiont_name, :area_id, :user_id]
  has_many :areainfos,         :foreign_key => [:area_id, :areainfo_name, :user_id]
  has_many :areamsgs
end
