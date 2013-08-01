class AddSubCategoryToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :sub_category, :string
  end

  def self.down
    remove_column :ads, :sub_category
  end
end
