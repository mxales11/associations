class Order < ActiveRecord::Base
  attr_accessible :quantity, :total_cost, :customer_name, :customer_id, :item_id

  has_one :item
  belongs_to :customer


  validates(:quantity, presence:true)
  validates(:total_cost, presence: true)
  validates(:customer_id, presence: true)
  validates(:item_id, presence: true)


end
