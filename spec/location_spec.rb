require "minitest/autorun"
require "./lib/location"

describe Location do
  before do
    @location = Location.new("Test Location", 1, 1, 1, 1, 1, 1, 1, 1)
  end

  describe "when a location has a name" do
    it "can return it's name" do
      @location.name.must_equal "Test Location"
    end
  end

end