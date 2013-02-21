class Item < ActiveRecord::Base
  attr_accessible :name

  has_many :orders
  validates(:name, presence: true, length: { maximum: 30 }, uniqueness: {case_sensitive: false })
  

end
