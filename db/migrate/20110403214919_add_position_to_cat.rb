class AddPositionToCat < ActiveRecord::Migration
  def self.up
    add_column :cats, :position, :integer
  end

  def self.down
    remove_column :cats, :position
  end
end
