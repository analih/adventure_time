puts "How many players want to play?"
print "< "

number_of_players = $stdin.gets.chomp.to_i

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

players = []

number_of_players.times do |i|
  puts "What is the name for player number #{i + 1}?"
  print "< "
  name_of_a_player = $stdin.gets.chomp
  players << Player.new(name_of_a_player)
end

players.each do |player|
  puts player.name
end

class Character #< Player
  @@character_names = ["Finn", "Jake"]

# class method that creates all the characters
  def self.create_characters

  end

# class method that returns a random character
  def self.random_character

  end

  def initialize

  end
end

def character(characters_name)
	val = @@characters[characters_name]
	return val
end
