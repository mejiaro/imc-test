class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :route, counter_cache: true

  before_save :calculate_price

  validates :status, :shipment_status, :cbm, presence: true

  validates :status, inclusion: { in: %w(Accepted Declined) }
  validates :shipment_status, inclusion: { in: %w(Received Open Completed) }

  def calculate_price
  	self.price = (route.price * cbm)
  end


end
