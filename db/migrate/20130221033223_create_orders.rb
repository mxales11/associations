class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :item_name
      t.integer :customer_id
      t.integer :quantity
      t.integer :total_cost

      t.timestamps
    end
  end
end
