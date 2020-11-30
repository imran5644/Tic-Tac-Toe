# require_relative '../bin/main.rb'
require_relative '../lib/game.rb'
require_relative '../lib/players.rb'



# game.rb
describe Tictactoe do
  let!(:game) { Tictactoe.new}
  describe '#game_board' do
    it 'it will return the game board' do
    expect(game.game_board([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eql("1|2|3\n-------------------\n4|5|6\n--------------------\n7|8|9")
    end
  end

  describe '#user_input_index' do
    it 'it will return the index position of the players' do
      expect(game.user_input_index(2)).to eql(1)
    end
  end

  describe '#players_move' do
    it 'it will players position on the board' do
        expect(game.players_move(1,[1, 2, 3, 4, 5, 6, 7, 8, 9],'x')).to eql('x')
    end
  end

end

