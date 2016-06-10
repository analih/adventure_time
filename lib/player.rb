class Player
  attr_reader :name
  attr_accessor :character

  def initialize(name)
    @name = name
  end

  def take_turn
    puts character.have_encounter! 
  end
end

