class CreatePlaces < ActiveRecord::Migration
  def change

    create_table :places do |t|
      t.string :name,  :null => false
      t.string :abbr
      t.integer :position
      t.integer :parent_id
      t.integer :places_count, :default => 0

      t.timestamps
    end

    add_index :places, :parent_id
  end
end
