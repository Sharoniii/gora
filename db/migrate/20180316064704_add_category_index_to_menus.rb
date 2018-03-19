class AddCategoryIndexToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :category, :string
    add_index :menus, :catogory
  end
end
