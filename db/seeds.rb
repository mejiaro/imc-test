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
Port.create(name: "Amsterdam", lat: 52.37075, lng: 4.878955)
Port.create(name: "Busan", lat:35.10162, lng:129.03605)
Port.create(name: "Fort Lauderdale", lat: 26.175625, lng: -80.13808)


FreightType.create(name: "Air")
FreightType.create(name: "Sea")

6.times do

	r = Route.create(origin: Port.all.sample,
					 destination: Port.all.sample,
					 freight_type: FreightType.all.sample,
					 price: Faker::Number.unique.number(4))
end


8.times do
	name = Faker::RickAndMorty.character
  	Customer.create(name: name,
                 email: name.delete(' ').downcase+'@forwarder.io',
                 company: Faker::Company.name)

end

shipment_status = %w(Received Open Completed)
status = %w(Accepted Declined)

42.times do 
	Booking.create(customer: Customer.all.sample,
				   route: Route.all.sample,
				   cbm: Faker::Number.unique.number(2),
				   status: status.sample,
				   shipment_status: shipment_status.sample)


end




