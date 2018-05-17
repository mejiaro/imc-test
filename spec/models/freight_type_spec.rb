require 'spec_helper'

describe FreightType do
	it { should validate_presence_of(:name) }
end