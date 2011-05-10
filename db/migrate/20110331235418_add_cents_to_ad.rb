class AddCentsToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :cents, :string
  end

  def self.down
    remove_column :ads, :cents
  end
end
