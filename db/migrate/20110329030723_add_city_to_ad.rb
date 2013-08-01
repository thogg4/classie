class AddCityToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :city, :string
  end

  def self.down
    remove_column :ads, :city
  end
end
