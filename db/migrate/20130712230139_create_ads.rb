class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.string :price
      t.string :city
      t.string :state
      t.string :sub_cat
      t.integer :views

      t.timestamps
    end
  end
end
