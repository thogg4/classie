class AddStateToAd < ActiveRecord::Migration
  def self.up
    add_column :ads, :state, :string
  end

  def self.down
    remove_column :ads, :state
  end
end
