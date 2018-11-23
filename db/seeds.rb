# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Snack.destroy_all
Retailer.destroy_all

#retailers
girl_scouts = Retailer.create(name: "Girl Scouts", year_established: 1912)
frito_lay = Retailer.create(name: "Frito-Lay", year_established: 1908)

#snacks
thin_mints = Snack.create(name: "Thin Mints", calories: 400, deliciousness: 7, retailer: girl_scouts)
dosidos = Snack.create(name: "Dosidos", calories: 100, deliciousness: 5, retailer: girl_scouts)