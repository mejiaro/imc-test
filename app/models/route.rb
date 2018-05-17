class Route < ApplicationRecord
  belongs_to :port, optional:true
  belongs_to :origin,      class_name: :Port, foreign_key: "origin_id"
  belongs_to :destination, class_name: :Port, foreign_key: "destination_id"
  belongs_to :freight_type
  has_many :bookings

  validate :origin_is_different_from_destination

  validates :price, presence: true

  scope :most_popular, -> {order(bookings_count: :desc).limit(5)}

  ERROR = 'Origin and Destination ports have to be different.'.freeze

  def origin_is_different_from_destination
  	errors.add(:base, ERROR) if origin == destination
  end

  def bookings_total_capacity
  	bookings.sum(:cbm)
  end

  def bookings_total_service
  	bookings.sum(:price)
  end
end
