class Port < ApplicationRecord
	has_many :origins, class_name: "Route", foreign_key: "origin_id"
	has_many :destinations, class_name: "Route", foreign_key: "destination_id"

	validates :name, :lat, :lng, presence: true
end
