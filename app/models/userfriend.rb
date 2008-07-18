class Userfriend < ActiveRecord::Base
  belongs_to :user, :foreign_key => "userfriend_id_me"
  belongs_to :user, :foreign_key => "userfriend_id_myfriend"
end
