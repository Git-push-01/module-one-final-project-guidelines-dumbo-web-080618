require_relative '../config/environment'


# defs
def create_league
  puts "Create a League!"

  league_name = gets.chomp
puts
  League.create(name: league_name)
    puts "#{league_name} Thatssssssss Awesome!!!"
    puts
    puts "You created #{league_name}!"
end
puts
def create_team
  puts "Create a Team!"

  team_name = gets.chomp
puts
  a_team=Team.create(name: team_name)
    puts "#{team_name} cool!!!"
    puts
    puts "You created #{team_name}!"
    a_team
end

# puts "pick your players for your team"
# player_name = gets.chomp

def show_all_players
  Player.all.each do |player|
    puts player.name
  end
end


def add_a_player_to_a_team(a_player, team)

  bob= Player.find_by(name: a_player)

  bob.add_to_team(team)
end





#executables
create_league
team=create_team
show_all_players
puts
puts
puts "Select a player"
puts "When you are done plese press N"
a_player = gets.chomp
puts
puts
add_a_player_to_a_team(a_player, team)

# pick_player(player_pick)
