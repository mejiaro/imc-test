require 'spec_helper'

describe Booking do
	let(:booking) {Booking.new}
	it { should validate_presence_of(:cbm)}
	it { should validate_presence_of(:status)}
	it { should validate_presence_of(:shipment_status)}

	it "belongs_to a destination" do
		expect(booking).to belong_to :customer
	end

	it "belongs_to an origin" do
		expect(booking).to belong_to :route
	end

end