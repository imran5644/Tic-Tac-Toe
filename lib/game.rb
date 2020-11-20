# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
class Tictactoe
  def game_board(board)
    message = "#{board[0]}|#{board[1]}|#{board[2]}\n"
    message += "-------------------\n"
    message += "#{board[3]}|#{board[4]}|#{board[5]}\n"
    message += "--------------------\n"
    message += "#{board[6]}| #{board[7]}|#{board[8]}"
    message
  end

  def user_input_index(user_input)
    user_input.to_i - 1
  end

  def players_move(index, board, player)
    board[user_input_index(index)] = player
  end

  def players_position(board, index)
    return true if board[index] == 'x' || board[index] == 'o'

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
    index = user_input_index(index)
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
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
