class RemoveCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :subject,:string
  end
end
