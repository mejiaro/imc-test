require 'spec_helper'

describe Route do
	let(:route) {Route.new}
	it { should validate_presence_of(:price) }

	it "belongs_to a destination" do
		expect(route).to belong_to :destination
	end

	it "belongs_to an origin" do
		expect(route).to belong_to :origin
	end

	it "belongs_to a freight tyipe" do
		expect(route).to belong_to :freight_type
	end
end