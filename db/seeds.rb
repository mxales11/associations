# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


items = Item.create([{ name: 'Chair', price: '50'}, { name: 'Table', price: '70'}, { name: 'Desk', price: '80'}, { name: 'Lamp', price: '60'}, { name: 'Radio', price: '18'}, { name: 'TV', price: '549'}, { name: 'Box', price: '43'}, { name: 'Notebook', price: '75'}, { name: 'Paper', price: '4'}, { name: 'Door', price: '30'}])

customers = Customer.create([{ name: '3M', contact: 'Rick Johnson', phone: "543654321" }, { name: 'Walmart', contact: 'Ben Watkins', phone: "3213323" }, { name: 'Target', contact: 'Jacek Kowalski', phone: "507345943" }])