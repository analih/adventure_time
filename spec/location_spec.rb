require "minitest/autorun"
require "./lib/location"
require "./lib/monster"
require "./lib/barrier"

describe Location do

  describe "when a location has a name" do
    before do
      @location = Location.new("Test Location", 1, 1, 1, 1, 1, 1, 1, 2)
    end

    it "can return it's name" do
      @location.name.must_equal "Test Location"
    end
  end

  describe "build_location" do
    describe 'when adding a monster' do
      it 'will add a monster encounter to the location' do
        location = Location.new("Test Location", 1, 0, 0, 0, 0, 0, 0, 0)
        location.build_location
        location.encounters.length.must_equal 1

        assert_instance_of(Monster, location.encounters.first)
      end
    end
    
    describe 'when adding monsters' do
      it 'will add monster encounters to the location equal to the count' do
        location = Location.new("Test Location", 3, 0, 0, 0, 0, 0, 0, 0)
        location.build_location
        location.encounters.length.must_equal 3

        assert_instance_of(Monster, location.encounters.first)
      end
    end

    describe 'when adding a barrier' do
      it 'will add a barrier encounter to the location' do
        location = Location.new("Test Location", 0, 1, 0, 0, 0, 0, 0, 0)
        location.build_location
        assert_instance_of(Barrier, location.encounters.first)
      end
    end
  end

  describe "valid?" do
    describe 'when a location has too few encounter counts' do
      it 'will be invalid' do
        location = Location.new("Too Few Location", 1, 1, 1, 1, 1, 1, 1, 1)
        location.valid?.must_equal false
      end
    end

    describe 'when a location has the correct encounter counts' do
      it 'will be valid' do
        location = Location.new("Just Right Location", 1, 1, 1, 1, 1, 1, 1, 2)
        location.valid?.must_equal true
      end
    end

    describe 'when a location has too many encounter counts' do
      it 'will be invalid' do
        location = Location.new("Too Many Location", 1, 1, 1, 1, 1, 1, 1, 3)
        location.valid?.must_equal false
      end
    end
  end

end