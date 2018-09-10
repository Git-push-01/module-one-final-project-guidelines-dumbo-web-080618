require_relative '../config/environment'




puts
Team.all.each do |team|
  puts "Welcome To NFL Player Stats"
end
puts

team = Team.find(1)

puts"Pick a Team "
puts

puts"Pick a Player see the Stats"
all_players = team.players
puts
all_players.each do |player|
  puts "#{player.name}"

end

# Status Key
puts "ACT = Active"
puts "RES = Injured reserve"
puts "NON = Non football related injured reserve"
puts "SUS = Suspended"
puts "PUP = Physically unable to perform"
puts "UDF = Unsigned draft pick"
puts "EXE = Exempt"


puts
player_name = gets.chomp
puts
puts
result = Player.find_by(name: player_name)
puts "Player Name: #{result.name}"
puts "Player Number: #{result.player_number}"
puts "Player Status: #{result.player_status}"
puts "Player Birth Date: #{result.birth_date}"
puts "Player Height: #{result.height}"
puts "Player Weight: #{result.weight}"
puts "Player College: #{result.college}"
puts
puts
puts"Thank you come again"
puts
puts
# binding.pry
# 0
