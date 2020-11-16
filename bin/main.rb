#!/usr/bin/env ruby
puts 'Welcome to Tic Tac Toe Game'

puts 'please enter the name of player1'
player_1 = gets.chomp

puts 'please enter the name of player2'
player_2 = gets.chomp

puts "the game is playing by #{player_1} and #{player_2}"

puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def game_board(board)
   puts "#{board[0]}|#{board[1]}|#{board[2]}"
   puts '-------------------'
   puts "#{board[3]}|#{board[4]}|#{board[5]}"
   puts '--------------------'
   puts "#{board[6]}| #{board[7]}|#{board[8]}"
end

game_board(board)
