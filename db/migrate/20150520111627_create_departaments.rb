class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :name
      t.string :company_name

      t.timestamps null: false
    end
  end
end
