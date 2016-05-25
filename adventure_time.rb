require './lib/character'
require './lib/player'
require './lib/location'

puts "How many players want to play?"
print "< "

number_of_players = $stdin.gets.chomp.to_i

while number_of_players > 6 || number_of_players <= 0
  puts "Try again"
  number_of_players = $stdin.gets.chomp.to_i
end

players = []

c1 = Character.new('Jake')
c2 = Character.new('Finn')
c3 = Character.new('Marceline')
c4 = Character.new('Princess Bubblegum')
c5 = Character.new('The Ice King')
c6 = Character.new('BMO')

characters = [c1, c2, c3, c4, c5, c6]

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

l1 = Location.new("Tree Fort")
l2 = Location.new("Dead World")
l3 = Location.new("Candy Kingdom")
l4 = Location.new("Nightosphere")

locations = [l1, l2, l3, l4]

def location_menu(locations)
	menu = ""
	number = 1
	locations.each do |location|
		menu << "#{number}. " << location.name << "\n"
		number = number + 1
	end 
	menu
end

players.each do |player|
  puts "Which location should #{player.character.name} start at? (choose a number)"
  puts location_menu(locations)
  print "< "
  character_location = $stdin.gets.chomp.to_i
    
  while character_location > locations.length || character_location <= 0
    puts "Try again"
    puts location_menu(locations)
    print "< "
	  character_location = $stdin.gets.chomp.to_i
  end

  index = character_location - 1
  location = locations[index]
  character = player.character
  character.location = location
end

players.each do |player|
  puts player.name
  puts player.character.name
  puts player.character.location.name
end