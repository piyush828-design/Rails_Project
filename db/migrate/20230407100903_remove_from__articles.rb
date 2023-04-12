class RemoveFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles,:string
  end
end
