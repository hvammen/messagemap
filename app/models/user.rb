class User < ActiveRecord::Base
  belongs_to :tag
  has_many :tag
end