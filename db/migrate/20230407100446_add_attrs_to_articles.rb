class AddAttrsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column  :articles,:phone,:interger
  end
end
