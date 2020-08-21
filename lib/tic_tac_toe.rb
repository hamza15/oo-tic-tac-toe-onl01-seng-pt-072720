class TicTacToe
  
  @@count = 0
  
  WIN_COMBINATIONS = [[0,1,2],[0,3,6],[0,4,8],[1,4,7],[2,5,8],[2,4,6],[3,4,5],[6,7,8]]
  
  def initialize(board = nil)
    @board = Array.new(9, " ")
  end 
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(index)
    index.to_i - 1
  end
    
  def move(index, token ="X")
    @board[index] = token
  end
  
  def position_taken?(index)
    @board[index] != " "
  end 
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn
    puts "Pick a position between 1-9"
    input = gets
    input_to_index(input)
    if valid_move?(input)
      move(input)
      display_board
    else
      turn
    end
    display_board
  end
  
  def turn_count
    @board.count{|i| i != " "}
  end 
  
  def current_player
    
  end
  
end 