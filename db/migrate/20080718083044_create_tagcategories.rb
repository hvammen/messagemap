class CreateTagcategories < ActiveRecord::Migration
  def self.up
    create_table :tagcategories do |t|
      t.string :tag_name_parent
      t.string :tag_name_child

      t.timestamps
    end
  end

  def self.down
    drop_table :tagcategories
  end
end
