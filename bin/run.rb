require_relative '../config/environment'



puts
Team.all.each do |team|
  puts "Welcome To #{team.name} Player Stats"
end
puts

team = Team.find(1)

puts"Pick a Jets Player"
all_players = team.players
puts
all_players.each do |player|
  puts "#{player.name}"

end
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
