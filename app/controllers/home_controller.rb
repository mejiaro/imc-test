class HomeController < ApplicationController


	def index
		@most_popular_routes = Route.most_popular
		@freight_types = Rails.cache.fetch("freight_types", expires: 1.hour) do
 	    FreightType.all
 	  end
 	  @in_transit = Booking.in_transit
 	  @completed = Booking.completed
 	  @received = Booking.received
	end

end