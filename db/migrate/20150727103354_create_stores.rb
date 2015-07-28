class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :address
      t.integer :phone
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
