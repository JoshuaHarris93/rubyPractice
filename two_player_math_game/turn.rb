class Turn
    
  attr_reader :current_player, :enemy_player
  attr_accessor :round
  
  def initialize(players)
    @players = players
    @round = 0
    @current_player = nil
  end

end
