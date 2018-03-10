class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.references :city, index: true, foreign_key: true
      t.references :mark, index: true, foreign_key: true
      t.string :phone
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
