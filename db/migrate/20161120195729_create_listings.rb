class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :item
      t.string :description
      t.string :price
      t.string :location

      t.timestamps
    end
  end
end
