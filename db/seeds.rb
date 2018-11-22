# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Snack.destroy_all

chocolate = Snack.create(name: "Chocolate Bar", calories: 400, deliciousness: 7)
oreos = Snack.create(name: "Oreo Cookie", calories: 100, deliciousness: 5)