# require_relative '../bin/main.rb'
require_relative '../lib/game'
require_relative '../lib/players'

# game.rb
describe Tictactoe do
  let!(:game) { Tictactoe.new }
  let!(:board_clean) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let!(:board_marked) { [1, 'x', 3, 'o', 5, 'x', 7, 'o', 9] }
  let!(:board_win) { [1, 'x', 3, 'o', 5, 'x', 'o', 'o', 'o'] }
  let!(:board_draw) { %w[o o x x x o o x o] }

  describe '#game_board' do
    it 'it will return the game board' do
      expect(game.game_board(board_clean)).to eql("1|2|3\n-------------------\n4|5|6\n--------------------\n7|8|9")
    end
  end

  describe '#players_move' do
    it 'it will players position on the board' do
      expect(game.players_move(1, board_clean, 'x')).to eql('x')
    end
  end

  describe '#user_input_index' do
    it 'it will return the index position of the players' do
      expect(game.user_input_index(2)).to eql(1)
    end
  end

  describe '#players_position' do
    it "returns true if the position have 'x' or 'o'" do
      expect(game.players_position(board_marked, 1)).to be_truthy
    end

    it "returns false if the position does not have 'x' or 'o'" do
      expect(game.players_position(board_marked, 0)).to be_falsy
    end
  end

  describe '#valid_move?' do
    it 'returns true if the position is available' do
      expect(game.valid_move?(board_marked, 1)).to be_truthy
    end

    it 'returns false if the position is not available' do
      expect(game.valid_move?(board_marked, 2)).to be_falsy
    end
  end

  describe '#won?' do
    it 'return true if player has three in a row' do
      expect(game.won?(board_win, 'o')).to be_truthy
    end

    it "return false if player doesn't have three in a row" do
      expect(game.won?(board_win, 'x')).to be_falsy
    end
  end

  describe '#draw?' do
    it 'returns true if there is no available moves' do
      expect(game.draw?(board_draw)).to be_truthy
    end
  end
end

# players.rb
