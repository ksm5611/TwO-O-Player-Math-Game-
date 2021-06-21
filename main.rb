# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require "pp"
require "./player"
require "./game"

p1 = Player.new(3, 'Player 1')
p2 = Player.new(3, 'Player 2')

game = Game.new(p1, p2)

game.create_game()
# game.player1
