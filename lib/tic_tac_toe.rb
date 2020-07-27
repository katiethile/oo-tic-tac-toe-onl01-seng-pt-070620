class TicTacToe
    attr_accessor :board 

  def initialize(board = nil)
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  
      WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 

  def input_to_index(user_input)
   user_input.to_i - 1
  end

  def move(index, player)
   board[index] = player
  end
  
  def position_taken?(index_value)
    ((@board[index_value] == "X") || (@board[index_value] == "O"))
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end 
  
  def turn_count
    board.count {|character| character =="X" || character == "O"}
end 

  def current_player
    if turn_count % 2 == 0
    "X"
    else
    "O"
  end
end 

