class AddSexToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :sex, :string
  end
end
