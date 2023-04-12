class AddNewField < ActiveRecord::Migration[7.0]
  def change
    add_column :demos, :price, :decimal
  end
end
