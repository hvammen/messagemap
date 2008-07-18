require 'composite_primary_keys'

class Tagcategory < ActiveRecord::Base
  set_primay_keys :tag_name_parent, :tag_name_child

  belongs_to :tag, :foreign_key => "tag_name_parent"
  belongs_to :tag, :foreign_key => "tag_name_child"
end
