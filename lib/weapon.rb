class Weapon
  attr_reader :name

  def self.all 
    [
      Weapon.new("Grass Sword"),
      Weapon.new("Fionna's Swords"),
      Weapon.new("Mushroom Bomb"),
      Weapon.new("Ball Blam Burglerber"),
      Weapon.new("Sound Sword"),
      Weapon.new("Candy Cane Shotgun")

    ]
    
  end

  def initialize(name)
    @name = name
  end
end