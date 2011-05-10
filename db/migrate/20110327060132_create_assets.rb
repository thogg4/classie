class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :ad_id
      t.string :image
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
