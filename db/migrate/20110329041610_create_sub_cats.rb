class CreateSubCats < ActiveRecord::Migration
  def self.up
    create_table :sub_cats do |t|
      t.string :name
      t.boolean :admin
      t.integer :cat_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_cats
  end
end
