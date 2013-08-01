class AddPriceToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :price, :string
  end

  def self.down
    remove_column :ads, :price
  end
end
