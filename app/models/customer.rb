class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone
  has_many :orders

  validates(:name, presence: true, length: { maximum: 30 })
  validates(:phone, presence: true)
  validates(:contact, presence: true, length: { maximum: 30 })

end
