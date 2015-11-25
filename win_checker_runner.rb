require_relative("win_checker")

win_checker = WinChecker.new
empty_board = [ [nil, nil, nil ], [nil, nil, nil ], [nil, nil, nil ] ]
symbol = :o
puts "check that empty board does not win: expect that #{win_checker.has_won?(symbol, empty_board)} is false \n"

board_with_horizontal = [ 
  [:o, :o, :o ], 
  [nil, nil, nil ], 
  [nil, nil, nil ] 
]
puts "check that horizontal line wins : expect that #{win_checker.has_won?(symbol, board_with_horizontal)} is true \n"

board_with_vertical = [ 
  [:o, :x, nil], 
  [:o, :x, nil], 
  [:o, nil, nil] 
]
puts "check that vertical line wins : expect that #{win_checker.has_won?(symbol, board_with_vertical)} is true \n"

board_with_diagonal = [ 
  [:o, :x, :x], 
  [nil, :o, nil], 
  [nil, nil, :o] 
]
puts "check that diagonal line wins : expect that #{win_checker.has_won?(symbol, board_with_diagonal)} is true \n"
