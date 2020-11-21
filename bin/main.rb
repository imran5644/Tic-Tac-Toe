#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
require_relative '../lib/game'
require_relative '../lib/players'
game = Tictactoe.new
players = Player.new
loop do
  system('clear')
  puts 'Welcome to Tic Tac Toe Game'
  puts 'please enter the name of player1'
  playerone = gets.chomp
  puts 'please enter the name of player2'
  playertwo = gets.chomp
  gameon = true
  counts = 0
  players.playerturn = 'x'
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts game.game_board(board)
  while gameon
    puts "the game is playing by #{playerone} and #{playertwo}"
    puts 'which player is playing'
    puts players.playerturn.to_s

    puts 'On which position you want to play?'
    puts 'enter number between 1 and 9'
    user_input = gets.chomp
    puts "player chose #{user_input}"
    if !game.valid_move?(board, user_input)
      puts 'this is not a valid move'
    else
      puts 'this is a valid move'
      counts += 1
      game.players_move(user_input, board, players.playerturn)
      break if game.won?(board, players.playerturn) || game.draw?(board)

      players.player_switch
    end
    puts game.game_board(board)
    gameon = false if counts == 9
  end
  puts game.game_board(board)
  puts "#{players.playerturn} won " if game.won?(board, players.playerturn)
  puts 'all positions filled and it\'s a draw' if game.draw?(board)
  puts 'do you want to play again? yes or no'
  wanna_play = gets.chomp
  break if wanna_play == 'no'
end
# rubocop:enable Metrics/BlockLength
