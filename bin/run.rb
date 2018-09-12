require_relative '../config/environment'


# defs
def create_league
  puts "Create a League!"

  league_name = gets.chomp
puts
  league=League.create(name: league_name)
    puts "#{league_name} Thatssssssss Awesome!!!"
    puts
    puts "You created #{league_name}!"
    league
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

  player = Player.find_by(name: a_player)

  player.add_to_team(team)
  player
end

# def teams(team_name)
#   Team.all.find do |team|
#     team.name == team_name
#   end.id
# end

def find_player_with_team_id(team_id)
player  = Player.all.select do |player|
    player.team_id == team_id
  end
   player.each do |a_player|
    puts a_player.name
        # puts a_player.team.league
  end
end



 def executables
league=create_league
team = create_team
team.add_to_league(league)
show_all_players
puts
puts

puts "Select a player"
puts "When you are done plese press N"
a_player = gets.chomp
puts
puts
add_a_player_to_a_team(a_player, team)
find_player_with_team_id(team.id)

 puts "Select a player"
 puts "When you are done plese press N"
 a_player = gets.chomp
 puts
 puts
 add_a_player_to_a_team(a_player, team)
find_player_with_team_id(team.id)


end
executables
# pick_player(player_pick)
