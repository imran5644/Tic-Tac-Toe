#!/usr/bin/env ruby
puts 'Welcome to Tic Tac Toe Game'

puts 'please enter the name of player1'
playerone = gets.chomp

puts 'please enter the name of player2'
playertwo = gets.chomp

puts "the game is playing by #{playerone} and #{playertwo}"

puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def game_board(board)
  puts "#{board[0]}|#{board[1]}|#{board[2]}"
  puts '-------------------'
  puts "#{board[3]}|#{board[4]}|#{board[5]}"
  puts '--------------------'
  puts "#{board[6]}| #{board[7]}|#{board[8]}"
end

game_board(board)
