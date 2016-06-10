require './lib/character'
require './lib/player'
require './lib/location'
require './lib/henchman'
require './lib/boss'
require './lib/character'
require './lib/location'

puts "How many players want to play?"
print "< "

number_of_players = $stdin.gets.chomp.to_i

while number_of_players > 6 || number_of_players <= 0
  puts "Try again"
  number_of_players = $stdin.gets.chomp.to_i
end

players = []

characters = Character.all

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

locations = Location.all
enemies = []
enemies << Boss.new('Gunter')
(locations.length - 1).times do 
  enemies << Henchman.new('Penguin')
end
shuffled_enemies = enemies.shuffle
locations.each do |location|
  location.encounters << shuffled_enemies.pop
  location.build_location
  location.encounters.shuffle!
end

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

locations.each do |location|
  puts "#{location.name} : #{location.encounters.map(&:name)}"
end
