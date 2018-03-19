class AddZoneReferencesToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :zone_id, :integer
    add_index :menus, :zone_id
    add_index :menus, [:user_id, :zone_id]
  end
end
