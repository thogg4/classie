class AddPositionToSubCat < ActiveRecord::Migration
  def self.up
    add_column :sub_cats, :position, :integer
  end

  def self.down
    remove_column :sub_cats, :position
  end
end
