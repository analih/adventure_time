require "./lib/monster"

class Location 
	attr_reader :name, :encounters, :monster_count, :barrier_count, :weapon_count, :spell_count, :armor_count, :item_count, :ally_count, :blessing_count 

  def initialize(name, monster_count, barrier_count, weapon_count, spell_count, armor_count, item_count, ally_count, blessing_count)
    @encounters = []
    
    @name = name 
    
    @monster_count = monster_count
    @barrier_count = barrier_count
    @weapon_count = weapon_count
    @spell_count = spell_count
    @armor_count = armor_count
    @item_count = item_count
    @ally_count = ally_count
    @blessing_count = blessing_count
  end

  def valid?
    encounter_count = monster_count + barrier_count + weapon_count + spell_count + armor_count + item_count + ally_count + blessing_count
    encounter_count == 9 
  end 

  def build_location
    encounters << Monster.all.sample
  end

end
