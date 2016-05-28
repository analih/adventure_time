class Spell
  attr_reader :name

  def self.all 
    [
      Spell.new("Dustomancy"),
      Spell.new("Shadowcery"),
      Spell.new("Hair Growth"),
      Spell.new("Generate Mayonnaise"),
      Spell.new("Beauteous Wings")

    ]
  end

  def initialize(name)
    @name = name
  end
end