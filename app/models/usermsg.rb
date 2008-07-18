class Usermsg < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id_me"
  belongs_to :user, :foreign_key => "user_id_myfriend"
end
