class RemoveItemNameFromOrder < ActiveRecord::Migration
   def change
  	remove_column :orders, :item_name, :string
  end
end
