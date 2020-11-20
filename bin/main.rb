#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
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
  if board[index].to_i.is_a? Numeric
    false
  else
    true
  end
end

def players_turn(board)
  count = 0
  board.each do |spaces|
    count += 1 if spaces.include?('x') || spaces.include?('o')
  end
  count
end

def current_player(board)
  players_turn(board).even? ? 'x' : 'o'
end

def valid_move?(board, index)
  index.between?(0, 8) && !players_position(board, index)
end

def won?(board, current_player)
  win1 = board[0] == board[3] && board[3] == board[6] && current_player == board[0]
  win2 = board[1] == board[4] && board[4] == board[7] && current_player == board[1]
  win3 = board[2] == board[5] && board[5] == board[8] && current_player == board[2]
  win4 = board[0] == board[4] && board[4] == board[8] && current_player == board[0]
  win5 = board[2] == board[4] && board[4] == board[6] && current_player == board[2]
  win6 = board[0] == board[1] && board[1] == board[2] && current_player == board[0]
  win7 = board[3] == board[4] && board[4] == board[5] && current_player == board[3]
  win8 = board[6] == board[7] && board[7] == board[8] && current_player == board[6]

  true if win1 || win2 || win3 || win4 || win5 || win6 || win7 || win8
end

def draw?(board)
  board.all?(String)
end

loop do
  puts 'Welcome to Tic Tac Toe Game'
  puts 'please enter the name of player1'
  playerone = gets.chomp
  puts 'please enter the name of player2'
  playertwo = gets.chomp
  gameon = true
  counts = 0
  playerturn = 'x'
  board = [ 1, 2, 3, 4, 5, 6 , 7, 8, 9]
  game_board(board)
  while gameon
    puts "the game is playing by #{playerone} and #{playertwo}"
    puts 'which player is playing'
    puts playerturn.to_s

    puts 'On which position you want to play?'
    puts 'enter number between 1 and 9'
    user_input = gets.chomp
    puts "player chose #{user_input}"
    if !valid_move?(board, user_input_index(user_input))
      puts 'this is not a valid move'
    else
      puts 'this is a valid move'
      counts += 1
      players_move(user_input_index(user_input), board, playerturn)
      break if won?(board, playerturn) || draw?(board)

      if playerturn == 'x'
        puts playertwo.to_s
        playerturn = 'o'
      else
        puts playerone.to_s
        playerturn = 'x'
      end
    
    end
    game_board(board)
    gameon = false if counts == 9
  end
  game_board(board)
  puts "#{playerturn} won " if won?(board, playerturn)
  puts 'all positions filled and it\'s a drraw' if draw?(board)
  puts 'do you want to play again'

  wanna_play = gets.chomp
  break if wanna_play == 'no'
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
