class TicTacToe
  
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
  
  def input_to_index
    input = gets.to_i - 1
  end
    
  def move(index, token ="X")
    
  end
  
  def position_take?
    position = input_to_index
    if @board[position] == "X" || @board[position] == "O"
      return true
    else
      return false
    end
  end 
    
  
end 