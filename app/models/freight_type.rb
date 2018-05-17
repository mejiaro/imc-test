class FreightType < ApplicationRecord
	has_many :routes

	validates :name, presence: true


	def capacity_sold
 	    capacity = 0
			routes.each do |r|
				capacity += r.bookings_total_capacity
			end
			capacity/ 100.0		
	end

	def service_sold_dollars
		Money.new(service_sold, "USD").format
	end

	def service_sold
		service = 0
		routes.each do |r|
			service += r.bookings_total_service
		end

		service
	end

	def avg_price_cbm
		Money.new(service_sold/capacity_sold, "USD").format
	end
end
