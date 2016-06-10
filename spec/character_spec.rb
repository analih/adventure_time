require "minitest/autorun"
require "./lib/location"
require "./lib/character"

describe Character do

  describe "#have_encounter!" do
    before do
      @character = Character.new("Test Character")
    end

    describe "when the character's location has one encounter" do
      before do
        @location = Location.new("Test Location", 1, 0, 0, 0, 0, 0, 0, 0)
        @location.build_location
        @character.location = @location
        @encounter = @location.encounters.first
      end
    
      it 'will return the encounter\'s name' do
        @character.have_encounter!.must_equal @encounter.name
      end
    end
    
  end

end