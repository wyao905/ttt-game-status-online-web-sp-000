# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]
      
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
      
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return win_combination
      end
    end
    return false
  end
  
  def full?(board)
    if board.any?{|i| i == " " || i == nil}
      return false
    else
      return true
    end
  end
  
  def draw?(board)
    if !won?(board) && full?(board)
      return true
    else
      return false
    end
  end
  
  def over?(board)
    if won?(board) || full?(board) || draw?(board)
      return true
    else
      return false
    end
  end
  
  def winner(board)
<<<<<<< HEAD
    win = won?(board)
    if win
      if win.all?{|player| board[player] == "X"}
=======
    if won?(board) != false
      if won?(board).all?{|player| player == "X"}
>>>>>>> 80d24a68b1a3371f95fc8ac5d056dd11b43fb37d
        return "X"
      else
        return "O"
      end
    else
      return nil
    end
  end
        