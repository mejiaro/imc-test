class HomeController < ApplicationController


	def index
		@most_popular_routes = Route.most_popular
	end

end