class Game

  def initialize(win_checker)
    @board = [ [nil, nil, nil], [nil, nil, nil], [nil, nil, nil] ]
    @pieces = [:o, :x]
    @turn = 0
    @win_checker = win_checker
  end

  def display_board
    row_strings = @board.map do |row|
      row_to_string(row)
    end
    row_strings.join("\n_ _ _\n")
  end

  def current_piece
    @pieces[@turn % 2]
  end

  def place_piece(row, column)
    if out_of_range?(row, column)
      puts "invalid move"
      return
    end

    if @board[ row ][ column ]
      puts "Already a piece there"
      return
    end

    @board[ row ][ column ] = @pieces[@turn % 2]
  end

  def turn(row, column)
    place_piece(row, column)
    puts display_board
    check_for_win
    
  end

  def check_for_win
    if @win_checker.has_won?(current_piece, @board)
      puts "winner is #{current_piece}"
      new_game
    elsif board_full?
      puts "full board play again"
      new_game
    else
      @turn += 1
    end
  end

  def clear_board
    @board = [ [nil, nil, nil], [nil, nil, nil], [nil, nil, nil] ]
    @turn = 0
  end

  def new_game
    clear_board
    @pieces.rotate!
  end

  
  # private does not need and "end"
  private

    def row_to_string(row)
      row_symbols = row.map do |piece|
        piece || " "
      end
      row_symbols.join("|")
    end

    def out_of_range?(row, column)
      row >= 3 || column >= 3
    end

    def board_full?
      @board.flatten.all?
      #@turn == 9
    end

    def draw
      puts "The game is a draw"
      puts display_board
      put "Starting a new game"
      new_game
    end













end