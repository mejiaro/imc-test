class Route < ApplicationRecord
  belongs_to :port, optional:true
  belongs_to :origin,      class_name: :Port, foreign_key: "origin_id"
  belongs_to :destination, class_name: :Port, foreign_key: "destination_id"
  belongs_to :freight_type

  validate :origin_is_different_from_destination

  validates :price, presence: true

  def origin_is_different_from_destination
  	if origin == destination
  		errors.add(:base, 'Origin and Destination ports have to be different.')
  	end
  end
end
