class User < ActiveRecord::Base
  has_many :usertags
  has_many :userfriends
  has_many :userprivacies
  has_many :userdevices
  has_many :userdevicemsgtypes
  has_many :usermsgs
  
  belongs_to :userquiettime
  
  has_many :areas
  has_many :areaofficers
end