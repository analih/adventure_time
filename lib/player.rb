class Player
  attr_reader :name
  attr_accessor :character

  def initialize(name)
    @name = name
  end
end