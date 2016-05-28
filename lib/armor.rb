class Armor
  attr_reader :name

  def self.all 
    [
      Armor.new("Ice Armor"),
      Armor.new("Armor of Zeldron"),
      Armor.new("Flame Cloak"),
      Armor.new("Stone-skin potion"),
      Armor.new("Jake Suit")

    ]
  end

  def initialize(name)
    @name = name
  end
end