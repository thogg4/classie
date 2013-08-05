class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.timestamps

      t.string :title
      t.text :description
      t.integer :user_id
      t.string :price
      t.string :city
      t.string :state
      t.string :cat
      t.string :sub_cat
      t.integer :views
    end
  end
end
