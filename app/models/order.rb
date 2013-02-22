class Order < ActiveRecord::Base
  attr_accessible :customer_id, :item_id, :quantity, :total_cost, :customer_name

  belongs_to :item
  belongs_to :customer
  validates(:quantity, presence:true)
  validates(:total_cost, presence: true)
  validates(:customer_id, presence: true)


end
