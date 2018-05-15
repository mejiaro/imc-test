# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Port.create(name: "Acajutla", lat:13.59278, lng:-89.8275)
Port.create(name: "Hong Kong", lat:22.286394, lng:114.149139)
Port.create(name: "Hamburg", lat:53.551086, lng:3.9096)


FreightType.create(name: "Air")
FreightType.create(name: "Sea")

