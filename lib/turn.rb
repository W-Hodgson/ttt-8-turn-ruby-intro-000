def display_board(board)
  puts " board[0] | board[1] | board[2] "
  puts "-----------"
  puts " board[3] | board[4] | board[5] "
  puts "-----------"
  puts " board[6] | board[7] | board[8] "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  taken = position_taken?(board, index)
  if taken
    false
  else
    if index.between?(0, 8)
      true
    else
      false
    end
  end
end

def position_taken?(board, index)
  if board[index] == nil || board[index] == " " || board[index] == ""
    true
  else
    false
  end
end
