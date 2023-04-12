class Changetype < ActiveRecord::Migration[7.0]

  def up
    change_column :articles, :phone, :string
  end

  def down
    change_column :articles, :phone, :float
  end

end
