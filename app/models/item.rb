class Item < ActiveRecord::Base
  attr_accessible :name, :price, :order_id

  validates(:name, presence: true, length: { maximum: 30 }, uniqueness: {case_sensitive: false })
  validates(:price, presence: true)
  

end


