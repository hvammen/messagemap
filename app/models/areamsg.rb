class Areamsg < ActiveRecord::Base
  set_primary_key :areamsg_id
  
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :area, :foreign_key => "area_id"
  
  validates_uniqueness_of :areamsg_thread_id, :user_id, :area_id, :areamsg_message, :areamsg_created
end
