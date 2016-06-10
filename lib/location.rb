require "./lib/monster"
require "./lib/barrier"
require "./lib/weapon"
require "./lib/spell"
require "./lib/armor"
require "./lib/item"
require "./lib/ally"
require "./lib/blessing"

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

  def self.create!(name, monster_count, barrier_count, weapon_count, spell_count, armor_count, item_count, ally_count, blessing_count)
    new(name, monster_count, barrier_count, weapon_count, spell_count, armor_count, item_count, ally_count, blessing_count).tap do |new_location|
      if !new_location.valid?
        raise "Encounter count #{encounter_count} is not equal to #{EXPECTED_ENCOUNTER_COUNT}!"
      end
    end
  end

  def self.all 
    [
      Location.create!('Tree Fort', 1, 1, 2, 0, 2, 1, 2, 0),
      Location.create!('Dead World', 3, 0, 2, 2, 0, 2, 0, 0),
      Location.create!('Candy Kingdom', 0, 1, 0, 0, 2, 2, 2, 2),
      Location.create!('Nightosphere', 2, 1, 0, 2, 0, 2, 0, 2)
    ]
  end
  
  EXPECTED_ENCOUNTER_COUNT = 9

  def encounter_count
    monster_count + barrier_count + weapon_count + spell_count + armor_count + item_count + ally_count + blessing_count
  end  
  
  def valid?
    encounter_count == EXPECTED_ENCOUNTER_COUNT
  end 

  def build_location
    monster_count.times do |_|
      encounters << Monster.all.sample
    end
    barrier_count.times do |_|
      encounters << Barrier.all.sample
    end
    weapon_count.times do |_| 
      encounters << Weapon.all.sample
    end
    spell_count.times do |_|
      encounters << Spell.all.sample
    end
    armor_count.times do |_|
      encounters << Armor.all.sample
    end
    item_count.times do |_|
      encounters << Item.all.sample
    end
    ally_count.times do |_|
      encounters << Ally.all.sample
    end
    blessing_count.times do |_|
      encounters << Blessing.all.sample
    end

  end

end
