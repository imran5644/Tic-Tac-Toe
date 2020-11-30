class Player
  attr_accessor :playerturn
  attr_reader :playerone, :playertwo

  def players_turn(board)
    count = 0
    board.each do |spaces|
      count += 1 if spaces.to_s.include?('x') || spaces.to_s.include?('o')
    end
    count
  end

  def current_player(board)
    players_turn(board).even? ? 'x' : 'o'
  end

  def player_switch
    if @playerturn == 'x'
      puts @playertwo.to_s
      @playerturn = 'o'
    else
      puts @playerone.to_s
      @playerturn = 'x'
    end
  end
end
