class CreateSubCats < ActiveRecord::Migration
  def change
    create_table :sub_cats do |t|
      t.timestamps

      t.integer :cat_id
      t.string :name
    end
  end
end
