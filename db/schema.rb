# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080718084336) do

  create_table "areainfos", :force => true do |t|
    t.integer  "area_id"
    t.string   "areainfo_name"
    t.integer  "user_id"
    t.string   "areainfo_value_str"
    t.string   "areainfo_value_url"
    t.integer  "areainfo_value_int"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areamsgs", :force => true do |t|
    t.integer  "areamsg_id"
    t.integer  "areamsg_thread_id"
    t.integer  "user_id"
    t.integer  "area_id"
    t.text     "areamsg_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areaofficers", :force => true do |t|
    t.integer  "area_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", :force => true do |t|
    t.integer  "area_user_id"
    t.float    "area_point_lat"
    t.float    "area_point_lng"
    t.float    "area_point_rad"
    t.boolean  "area_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areasubscriptions", :force => true do |t|
    t.string   "areasubscription_name"
    t.integer  "area_id"
    t.integer  "user_id"
    t.string   "areasubscription_circle"
    t.integer  "areasubscription_rating"
    t.boolean  "areasubscription_notify"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areatags", :force => true do |t|
    t.string   "tag_name"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tagcategories", :force => true do |t|
    t.string   "tag_name_parent"
    t.string   "tag_name_child"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "tag_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userdevicemsgtypes", :force => true do |t|
    t.integer  "user_id"
    t.string   "userdevicemsgtype_device_type"
    t.string   "userdevicemsgtype_message_type"
    t.boolean  "userdevicemsgtype_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userdevices", :force => true do |t|
    t.integer  "user_id"
    t.string   "userdevice_device_type"
    t.string   "userdevice_username"
    t.string   "userdevice_password"
    t.integer  "userdevice_msglimit"
    t.boolean  "userdevice_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userfriends", :force => true do |t|
    t.integer  "userfriend_id_me"
    t.integer  "userfriend_id_myfriend"
    t.string   "userfriend_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usermsgs", :force => true do |t|
    t.integer  "user_id_from"
    t.integer  "user_id_to"
    t.text     "usermsg_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userprivacies", :force => true do |t|
    t.integer  "user_id"
    t.string   "userprivacy_message_type"
    t.string   "userprivacy_friend_type"
    t.string   "userprivacy_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userquiettimes", :force => true do |t|
    t.integer  "user_id"
    t.datetime "userquiettime_start"
    t.datetime "userquiettime_end"
    t.integer  "userquiettime_timezone"
    t.string   "userquiettime_type"
    t.boolean  "userquiettime_enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name",     :null => false
    t.string   "user_username", :null => false
    t.string   "user_password", :null => false
    t.string   "user_email",    :null => false
    t.string   "user_about"
    t.string   "user_website"
    t.string   "user_phone"
    t.string   "user_sex",      :null => false
    t.string   "user_birth",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usertags", :force => true do |t|
    t.string   "usertag_name"
    t.integer  "user_id"
    t.string   "usertag_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
