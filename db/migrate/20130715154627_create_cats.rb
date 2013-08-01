class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.boolean :admin
      t.integer :position

      t.timestamps
    end
  end
end
