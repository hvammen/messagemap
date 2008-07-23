require 'digest/sha1'

class User < ActiveRecord::Base
  has_many :usertags,          :foreign_key => [:usertag_name, :user_id, :usertag_type]
  has_many :userfriends,       :foreign_key => [:userfriend_id_me, :userfriend_id_myfriend]
  has_many :userprivacies
  has_many :userdevices
  has_many :userdevicemsgtypes
  has_many :usermsgs,          :foreign_key => [:user_id_me, :user_id_myfriend, :usermsg_message, :created_at]
  
  belongs_to :userquiettime
  
  def self.authenticate(login, pass)
    User.find(:first, :conditions => "user_username = '#{login}' AND user_password = '#{sha1(pass)}' ")
  end  

  def change_password(pass)
    update_attribute "user_password", self.class.sha1(pass)
  end
    
  protected

  def self.sha1(pass)
    Digest::SHA1.hexdigest("GhuKi-IopE--#{pass}--")
  end
    
  before_create :crypt_password
  
  def crypt_password
    write_attribute("user_password", self.class.sha1(user_password))
  end

  validates_presence_of   :user_username, :user_password, :user_password_confirmation
  validates_uniqueness_of :user_username, :on => :create
  validates_length_of     :user_username, :within => 3..40
  
  validates_confirmation_of :user_password, :on => :create
  validates_length_of       :user_password, :within => 5..40

end