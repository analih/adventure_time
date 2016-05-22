puts "How many players want to play?"
print "< "

number_of_players = $stdin.gets.chomp.to_i

class Player
  attr_reader :name
  attr_accessor :character

  def initialize(name)
    @name = name
  end
end

players = []

class Character
  attr_reader :name
  
  def initialize(name)
  	@name = name
  end
end

c1 = Character.new('Jake')
c2 = Character.new('Finn')
c3 = Character.new('Marceline')
c4 = Character.new('Princess Bubblegum')

characters = [c1, c2, c3, c4]

number_of_players.times do |i|
  puts "What is the name for player number #{i + 1}?"
  print "< "
  name_of_a_player = $stdin.gets.chomp
  player = Player.new(name_of_a_player)
  players << player 

  # TODO -> give each player a random character here
end

players.each do |player|
  puts player.name
  puts player.character.name
end

