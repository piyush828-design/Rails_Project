=begin
class UpdateType < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        change_column :articles, :phone,:string
      end

      dir.down do
        change_column :articles, :phone, :integer
      end
    end
  end
end
=end
class UpdateType < ActiveRecord::Migration[7.0]
  def up
    change_column :articles, :phone, :integer
  end

  def down
    change_column :articles, :phone, :string
  end
end
