class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :complement
      t.string :postalcode
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :place_id

      t.timestamps
    end

    add_index :addresses, :place_id
  end
end
