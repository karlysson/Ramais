class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :store, index: true, foreign_key: true
      t.references :departament, index: true, foreign_key: true
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
