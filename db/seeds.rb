# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


items = Item.create([{ name: 'Chair' }, { name: 'Table'}, { name: 'Desk'}, { name: 'Lamp' }, { name: 'Radio'}, { name: 'TV'}, { name: 'Box'}, { name: 'Notebook'}, { name: 'Paper'}, { name: 'Door'}])

customers = Customer.create([{ name: '3M', contact: 'Rick Johnson', phone: "543654321" }, { name: 'Walmart', contact: 'Ben Watkins', phone: "3213323" }, { name: 'Target', contact: 'Jacek Kowalski', phone: "507345943" }])