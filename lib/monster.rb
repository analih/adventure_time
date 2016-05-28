class Monster
  attr_reader :name

  def self.all
    [
      Monster.new("Vampire"),
      Monster.new("Sea Lard"),
      Monster.new("Tree of Blight"),
      Monster.new("Candy Zombie"),
      Monster.new("Dead Parasite")

    ]
  end

  def initialize(name)
    @name = name
  end
end