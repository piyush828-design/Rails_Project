
class ChangeType < ActiveRecord::Migration[7.0]
  def up
    change_column :demos, :subject, :float
  end

  def down
    change_column :demos, :subject, :string
  end
end
