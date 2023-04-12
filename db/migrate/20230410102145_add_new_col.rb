class AddNewCol < ActiveRecord::Migration[7.0]
  def change
    add_column  :demos,:subject,:string
  end
end
