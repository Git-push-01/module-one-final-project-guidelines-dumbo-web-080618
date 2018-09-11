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
  Team.create(name: team_name)
    puts "#{team_name} cool!!!"
    puts
    puts "You created #{team_name}!"
end

# puts "pick your players for your team"
# player_name = gets.chomp

def show_all_players
  Player.all.each do |player|
    puts player.name
  end
end

# def pick_player(player_name)
#   Player.all.find_by do |player|
#     player.name = player_name
#   end
# end



#executables
create_league
create_team
show_all_players
# pick_player(player_pick)




#
# puts
# Team.all.each do |team|
#   puts "Welcome To NFL Player Stats"
# end
# puts
#
# team = Team.find(1)
#
# puts"Pick a Team "
# puts
#
# puts"Pick a Player see the Stats"
# all_players = team.players
# puts
# all_players.each do |player|
#   puts "#{player.name}"
#
# end
#
# # Status Key
# puts "ACT = Active"
# puts "RES = Injured reserve"
# puts "NON = Non football related injured reserve"
# puts "SUS = Suspended"
# puts "PUP = Physically unable to perform"
# puts "UDF = Unsigned draft pick"
# puts "EXE = Exempt"
#
#
# puts
# player_name = gets.chomp
# puts
# puts
# result = Player.find_by(name: player_name)
# puts "Player Name: #{result.name}"
# puts "Player Number: #{result.player_number}"
# puts "Player Status: #{result.player_status}"
# puts "Player Birth Date: #{result.birth_date}"
# puts "Player Height: #{result.height}"
# puts "Player Weight: #{result.weight}"
# puts "Player College: #{result.college}"
# puts
# puts
# puts"Thank you come again"
# puts
# puts
# binding.pry
# 0
