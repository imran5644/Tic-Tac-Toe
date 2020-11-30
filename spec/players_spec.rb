require_relative '../lib/players'

describe Player do
  let!(:player) { Player.new }
  let!(:board_clean) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let!(:board_marked) { [1, 'x', 3, 'o', 5, 'x', 7, 'o', 9] }
  let!(:board_win) { [1, 'x', 3, 'o', 5, 'x', 'o', 'o', 'o'] }
  let!(:board_draw) { %w[o o x x x o o x o] }

  describe '#players_turn' do
    it 'returns the current turn' do
      expect(player.players_turn(board_marked)).to eql(4)
    end
  end

  describe '#current_player' do
    it 'returns the current player' do
      expect(player.current_player(board_marked)).to eql('x')
    end
  end

 describe '#player_switch' do
   it 'returns the opposite player' do
     @playerturn = 'o'
     expect(player.player_switch). to eql('x')
   end
 end
end
