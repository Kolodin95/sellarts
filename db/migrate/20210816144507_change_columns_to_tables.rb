class ChangeColumnsToTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :address
    add_column :artworks, :address, :string
  end
end
