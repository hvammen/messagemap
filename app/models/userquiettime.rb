require 'composite_primary_keys'

class Userquiettime < ActiveRecord::Base
  set_primary_keys :user_id, :userquiettime_start, :userquiettime_end, :userquiettime_timezone, :userquiettime_type
  
  belongs_to :user, :foreign_key => "user_id"
end
