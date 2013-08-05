class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.timestamps

      t.string :name
      t.boolean :admin
      t.integer :position
    end
  end
end
