require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if board[index] == " " && index >= 0 && index <= 8
    return true
  else
    return false
  end
end

def move(board, index, x)
  board[index] = x
end

def turn(board)
  puts "Please enter 1-9:"
  number = input_to_index(gets.strip)
  bool = valid_move?(board, number)
  if bool == false
    turn(board)
  end
  move(board, number, "X")
  display_board(board)
end
