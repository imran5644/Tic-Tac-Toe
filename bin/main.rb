#!/usr/bin/env ruby
def game_board(board)
  puts "#{board[0]}|#{board[1]}|#{board[2]}"
  puts '-------------------'
  puts "#{board[3]}|#{board[4]}|#{board[5]}"
  puts '--------------------'
  puts "#{board[6]}| #{board[7]}|#{board[8]}"
end

def user_input_index(user_input)
  user_input.to_i - 1
end

def players_move(index, board, player)
  board[index] = player
end

def players_position(board, index)
  if board[index] == '' || board[index] == ' ' || board[index] == nil
    return false
  end
end

def players_turn(board)
  count = 0
  board.each do |spaces|
    if spaces == 'x' || spaces == 'o'
      count += 1
    end
  end
  count
end

def current_player(board)
  players_turn(board) % 2 == 0 ? "x" : "o"
end

loop do  
  puts 'Welcome to Tic Tac Toe Game'
  puts 'please enter the name of player1'
  playerone = gets.chomp
  puts 'please enter the name of player2'
  playertwo = gets.chomp
  puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  gameon = true
  counts = 0
  while gameon do
    puts "the game is playing by #{playerone} and #{playertwo}"
    game_board(board)
    puts 'On which position you want to play'
    user_input = gets.chomp
    players_position(board, user_input_index(user_input))
    players_move(user_input_index(user_input), board, current_player(board))
      if user_input_index(user_input).between?(0, 8)
        puts 'this is a valid move'
      else
        puts 'this is not a valid move'
     end
      counts += 1
      puts 'all positions filled'
      puts board = ['x ', ' o', 'x ', ' o', ' x', ' o', ' o', ' x', 'x ']
      gameon = false if counts == 8
      end
      puts 'player1 win'
      puts 'do you want to play again'

      wanna_play = gets.chomp
   if wanna_play == 'no'
   break
  end
end
