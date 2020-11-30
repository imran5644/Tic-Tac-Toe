require_relative '../lib/players'
require_relative '../lib/game'
# players.rb
describe Player do
  let!(:player) { Player.new }
  let!(:board_clean) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let!(:board_marked) { [1, 'x', 3, 'o', 5, 'x', 7, 'o', 9] }
  let!(:board_win) { [1, 'x', 3, 'o', 5, 'x', 'o', 'o', 'o'] }
  let!(:board_draw) { %w[o o x x x o o x o] }
#   describe '#players_turn' do
#     it 'it will change the players turn after every move' do
#       expect(player.players_turn(board_marked)).to eql(4)
#       end
#     end

   describe '#current_player' do
     it 'tell about the current player' do
        expect(player.current_player(board_clean)).to eql('x')
     end
   end
  end