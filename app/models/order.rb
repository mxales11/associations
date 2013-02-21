class Order < ActiveRecord::Base
  attr_accessible :customer_id, :item_name, :quantity, :total_cost, :customer_name

  belongs_to :item
  belongs_to :customer
  validates(:item_name, presence: true)
  validates(:quantity, presence:true)
  validates(:total_cost, presence: true)
  validates(:customer_id, presence: true)

  before_validation :convert_customer_name_to_id

  def convert_customer_name_to_id
  	customer = Customer.find_by_name(self.customer_name)
  	self.customer_id = customer.id unless customer.nil?
  end


end
