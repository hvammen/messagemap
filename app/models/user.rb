class User < ActiveRecord::Base
  has_many :usertags,          :foreign_key => [:usertag_name, :user_id, :usertag_type]
  has_many :userfriends,       :foreign_key => [:userfriend_id_me, :userfriend_id_myfriend]
  has_many :userprivacies
  has_many :userdevices
  has_many :userdevicemsgtypes
  has_many :usermsgs,          :foreign_key => [:user_id_me, :user_id_myfriend, :usermsg_message, :created_at]
  
  belongs_to :userquiettime
end