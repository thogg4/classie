class AddCategoryToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :category, :string
  end

  def self.down
    remove_column :ads, :category
  end
end
