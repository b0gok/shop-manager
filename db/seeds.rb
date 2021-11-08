# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

manufacturer1 = Manufacturer.find_or_create_by(title: 'Hobby World')
manufacturer2 = Manufacturer.find_or_create_by(title: 'Zvezda')

product1 = Product.find_or_create_by(sku: '915057').update(title: 'Artline Эрмитаж', quantity: 1, manufacturer_id: manufacturer1.id )
product2 = Product.find_or_create_by(sku: '73600-R').update(title: 'Dungeons & Dragons: Стартовый набор', quantity: 2, manufacturer_id: manufacturer1.id )