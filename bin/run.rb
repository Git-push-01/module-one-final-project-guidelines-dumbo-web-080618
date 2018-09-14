require_relative '../config/environment'
#require 'pp'
require 'pry'




# defs
def create_league
  puts "Create a League!"

  league_name = gets.chomp
puts
  league=League.find_or_create_by(name: league_name)
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
  a_team=Team.find_or_create_by(name: team_name)
    puts "#{team_name} cool!!!"
    puts
    puts "You created #{team_name}!"
    a_team

end

# puts "pick your players for your team"
# player_name = gets.chomp
def show_all_players

  tp Player.all
  #  Player.all.each do |player|
  #    player.name
  # end


end


def add_a_player_to_a_team(a_player, team)

  player = Player.find_by(name: a_player)

  player.add_to_team(team)
   tp player
end
def remove_a_player
  puts "To remove a player from team enter the player name:"
   puts
  name = gets.chomp
 puts
player = Player.find_by(name: name)
player.team_id = nil
 puts "Player removed #{player.name}"
#binding.pry
player
end
#remove_a_player("Davis Tee")


#  def find_player_with_team_id(team_id)
#  player  = Player.all.find_all do |player|
#      player.name == team_id
#
#    end
# #binding.pry
# #   #player.each do |a_player|
# #   #   puts "Player League: #{a_player.team.league.name}"
# #   #  puts "Player Team: #{a_player.team.name}"
# #   #   puts "Player: #{a_player.name}"
# #   #   puts "Player Number: #{a_player.player_number}"
# #   #   puts "Player Position: #{a_player.player_position}"
# #   #   puts "Player Status: #{a_player.player_status}"
# #   #   puts "Player Birth Date: #{a_player.birth_date}"
# #   #   puts "Player Height: #{a_player.height}"
# #   #   puts "Player Weight: #{a_player.weight}"
# #   #   puts "Player College: #{a_player.college}"
# #   #       # puts a_player.team.league
# #    end
#     player
#  end
# find_player_with_team_id(4)

# def player_loop
#
#   puts "Select a player:"
#   a_player = gets.chomp
#   puts
#   puts "When you are done press N"
#   puts
#
#   add_a_player_to_a_team(a_player, team)
#   find_player_with_team_id(team.id)




# end

 def executables
   banner =
                                                                              "

                               $#####R
                       $TT?!X!!!!!!!!!!!!X!TT#$
                  $RT!!!!~~:::!!!!!!!!!!:::~!!!!TT$
                $T!!?~:!!!!!!!!!!!!!!!!!!!!!!!:~~!!TT$
             $RTX?~:!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:~!!!T$
           $R?U?~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!:~!!T$
          $T!T~:!!!!!!!!!!!!!!!!!!~!!!!!!!!!!!!!!!!!!!~!!?$
         $!!!~!!!!!!!!!!!!~~:!xiiUUUUiX!:~~!!!!!!!!!!!!!~!!$
        $?X!:!!!!!!!!!!!~:iW$$T##???###$$8U:~~!!!!!!!!!!!~!!$
       $T!!~!!!!!!!!!!~!X$$R?~       ~~~?TTT!~~!!!!!!!!!!!~!!$
       $!!~!!!!!!!!!!~!$$$$!     :::::~~~::~~:~~!!!!!!!!!!!~!!$
      $?!!~!!!!!!!!!!~!$$$$!::  !#T#####$$$$$$!~!!!!!!!!!!!~!!$
      $!H~!!!!!!!!!!!!~!#$$$U:~       :!8$$$$!~!!!!!!!!!!!!:~!#$
      $!!~!!!!!!!!!!!!!:~!T$$$8UUUiiUW$$$$T?~:!!!!!!!!!!!!!!~!~~~?$
      $!!~!!!!!!!!!!!!!!!::~~###TTTTTT#~~:!!!!!!!!!!!!!!!!!~! ~~!$
      $!!~!!!!!!!!!!!!!!!!!!!!!!:::::!!!!!!!!!!!!!!!!~~~        ~!$
      $!!~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!~    !!!!!::   X$
      $!!~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!~~ :!! ~!UUUUiUUW$
      $!!~!!!!!!!!!!!!!!!!!!!!!!    X!!!!!!!!~   !!!!:~!$
      $!UUX!!!!!!!!!!!!!!!!!!!!      W!!!!~~ ::: ~!$! ~!$
      $!$$$8!!!!!!!!!!!!!!!!!!!!    T!!!    ~!!!~ ~$X:~!$
      $!T$$$$U!!!!!!!!!!!!!!!!!!!T?!!~  ::   ~!!~: ~!~~!$
       $UUUUUUUUUU!!!!!!!!!!!!!!!!!!:  ~!!!  :!!!W!  ~ !$
                    $U!!!!~!!!!!!!!!!!!::  ~!!!!!$$U!:  ~~#TT$
                      $U!!!!!!!!!!!!!!!!!!::  ~~T$  $~ ::::~  ~~~#TT$
                        $U!!!!!!!!!!!!!!!!!!!!:  ~~##~ ~$ $8UUi::~~~!$
                          $U!!!!!!!!!!!!!!!!!!U8U::    ~TR$     $M~~!$
                             $UU!!!!!!!!!!!!U$    $Wi:   ~ ~~##T!~~!$
                                  $UUUUUW$          $!~ !Uiu:::    ~!$
                                                    $W:~!$     $W~ :$$
                                                     $X~:!$    $T~ !$$
                                                      $U~ ~?TR$$! ~U$$
                                                      "
banner2 =
"
$$$$$$$$$$$***$$$$$$$$$$$$$$$$$$$$$$$$$$$*Pigskin*$$$$$$$$$$$$$$$
$$$$$$$$$         .d**$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$         z$    ^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$F      .d*         ^*$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$F    z$$cd           $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$F .d* zb*beP            s$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$b$      d*$.e            *$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$         ze*c.d            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$r          dP$.e           ^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$           .d$c.d           ^$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$F            e$b.zr          ^$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$.            .K$c.e          3$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$             e$b z=         $$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$             .$$L.e          4$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$.             .*$ .r         z$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$c             .$$L.z  .d*$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$c             J$E z$      $$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$c           .$P        $$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$e.        z$        .$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$$$$c.  .dP         $$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$$$$$$$$E.         z$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ee$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$



"
 puts banner
 puts banner2

league=create_league
puts
team = create_team

team.add_to_league(league)


show_all_players
puts


puts "To add player type 'add'"
puts "To delete type 'delete'"
puts "When done type 'done'"
#x = gets.chomp.downcase
loop do
  x = gets.chomp.downcase

  #binding.pry
  case  x
  when "add"
    a_player = gets.chomp
    add_a_player_to_a_team(a_player, team)
    #find_player_with_team_id(team.id)
    puts "To add player type 'add'"
    puts "To delete type 'delete'"
    puts "When dine type 'done'"
    #puts "Show my players type 'Show players'"
    #x = gets.chomp

  when "delete"
    remove_a_player
    puts "To add player type 'add'"
    puts "To delete type 'delete'"
    puts "When done type 'done'"

   # when "Show player"
   #   team_id = gets.chomp
   #   find_player_with_team_id(team_id)

  when "done"
    break
    #puts "Show my players type 'Show players'"
    #x = gets.chomp
  # when "Show players"
  #   find_player_with_team_id(team.id)
  #   puts "To add player type 'add'"
  #   puts "To delete type 'delete'"
  #   puts "When done type 'done'"
  #   puts "Show my players type 'Show players'"
  #   x = gets.chomp


  end
  # system 'clear'
  # puts "Not a valid input, try again"
  # puts "To add player type 'add'"
  # puts "To delete type 'delete'"
  # puts "When done type 'done'"
  #   x = gets.chomp
end


end






#player_loop
#  puts "Select a player:"
# # puts "When you are done press N"
# puts
#
# ######
# a_player = gets.chomp
# puts
# #puts "When you are done plese press N"
#
#
#
#   #puts "Done"
#
#
# puts "Add another Player"
#
# add_a_player_to_a_team(a_player, team)
#
#
# find_player_with_team_id(team.id)
#
# name = gets.chomp
#
#
# puts "To remove a player from team enter the player name:"
# remove_a_player(name)
# puts
# puts "Add another Player"
# puts
# puts "When you are done plese press N"
#
#
# puts
#
#
#
#
# # puts " malcome"
# # else
# #   remove_a_player
# #puts "When you are done press N"
# #######
#
# #
#
# #  puts "Select a player:"
# #  #puts "When you are done plese press N"
# #  a_player = gets.chomp
# #  puts
# #  puts
# #  add_a_player_to_a_team(a_player, team)
# # find_player_with_team_id(team.id)
# #
# # puts "When you are done plese press N"
#
# end



#executables
# def player_loop
#
# loop do
#   puts "Select a player:"
#
#   a_player = gets.chomp
#   puts
#   puts "When you are done plese press N"
#   puts
#   add_a_player_to_a_team(a_player, team)
#   find_player_with_team_id(team.id)
# if a_player == "N"
#   break
# end
# end
# end


executables
# remove_a_player
puts

#player_loop
#pick_player(player_pick)
