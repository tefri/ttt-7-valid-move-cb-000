# code your #valid_move? method here
def valid_move?(board, index)
  index = index - 1
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  elsif position_taken?(board, index) == true
      return nil
  else
    return false    
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || " "
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X"||"O"
    return true
  end

end
