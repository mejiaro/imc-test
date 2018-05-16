class FreightType < ApplicationRecord
	has_many :routes

	validates :name, presence: true
end
