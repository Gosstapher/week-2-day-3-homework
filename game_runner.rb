require_relative("game")
require_relative("win_checker")
require("pry-byebug")
# create game
win_checker_1 = WinChecker.new()
game = Game.new(win_checker_1)
# place piece
game.turn(0,0)
# display board
# puts game.display_board
# #todo don't allow placing outside the board
# #done

# #todo rotate starting piece
# #game.new_game

# #todo automatically reset when full and display "draw"
# piece = :o
# puts "checking if game is won : #{game.has_won?(piece)} expect false"
# # game.place_piece(1,1)
# # game.place_piece(1,0)
# # game.place_piece(1,2)
# # game.place_piece(2,0)
# game.turn(0,1)
# game.turn(1,1)
# game.turn(2,1)
# game.turn(2,2)
# puts game.display_board

# puts "checking if game is won : #{game.has_won?(piece)} expect true"


#todo detect win state, dsiplay winner
binding.pry;''