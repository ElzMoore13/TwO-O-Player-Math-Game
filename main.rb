require './Player'
require './Game'

player_1 = Player.new('player 1')
player_2 = Player.new('player 2')
this_game = Game.new(player_1, player_2)

puts "hello!\n\n"

while(!this_game.game_is_over?)
  this_game.next_turn
end

this_game.game_ended
