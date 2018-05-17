require 'spec_helper'

describe Port do
	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:lat) }
	it { should validate_presence_of(:lng) }
end