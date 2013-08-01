class AddPageviewsToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :views, :integer
  end

  def self.down
    remove_column :ads, :views
  end
end
