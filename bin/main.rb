#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
loop do
  puts 'Welcome to Tic Tac Toe Game'
  puts 'please enter the name of player1'
  playerone = gets.chomp
  puts 'please enter the name of player2'
  playertwo = gets.chomp
  gameon = true
  counts = 0
  playerturn = 'x'
  while gameon
    puts "the game is playing by #{playerone} and #{playertwo}"
    puts 'which player is playing'
    puts playerturn.to_s
    playerturn = playerturn == 'x' ? 'o' : 'x'
    puts 'On which position you want to play'
    puts 'enter number between 1 and 9'
    user_input = gets.chomp
    puts "player chose #{user_input}"
    puts 'this is not a valid move'
    puts 'x|0|x'
    puts '-------------------'
    puts 'x|0|x'
    puts '--------------------'
    puts 'x|0|x'
    counts += 1
    puts 'all positions filled'
    puts 'x|0|x'
    puts '-------------------'
    puts 'x|0|x'
    puts '--------------------'
    puts 'x|0|x'
    gameon = false if counts == 8
  end
  puts 'player1 win'
  puts 'do you want to play again'

  wanna_play = gets.chomp
  break if wanna_play == 'no'
end
# rubocop:enable Metrics/BlockLength
