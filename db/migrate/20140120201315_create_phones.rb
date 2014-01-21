class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.string :branch
      t.integer :place_id
      t.string :responsible_name
      t.boolean :private, :default => true

      t.timestamps
    end
    add_index :phones, :place_id
  end
end
