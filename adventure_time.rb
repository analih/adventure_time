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
c5 = Character.new('The Ice King')

characters = [c1, c2, c3, c4]

def character_menu(characters)
  menu = "" 
  number = 1
  characters.each do |character|
  	menu << "#{number}. " << character.name << "\n"
  	number = number + 1
  end
  menu
end

number_of_players.times do |i|
  puts "What is the name for player number #{i + 1}?"
  print "< "
  name_of_a_player = $stdin.gets.chomp
  player = Player.new(name_of_a_player)
  players << player 
  
  puts "Which character do you want, #{player.name}? (choose a number)"
  puts character_menu(characters)
  print "< "
  player_number = $stdin.gets.chomp.to_i

  while player_number > characters.length || player_number <= 0
	puts "Try again"
    puts character_menu(characters)
    print "< "
    player_number = $stdin.gets.chomp.to_i
  end

  index = player_number - 1
  character = characters.delete_at(index) 


  player.character = character
  
end


players.each do |player|
  puts player.name
  puts player.character.name
end

