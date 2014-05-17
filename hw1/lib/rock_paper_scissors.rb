class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
  	strategy = ['R', 'S', 'P']
  	raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if not strategy.include? player1[1] 
  	raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if not strategy.include? player2[1]
  	if(player1[1] == player2[1])
  		return player1
  	end
  	if((player1[1] == 'R' and player2[1] == 'S') || 
  		(player1[1] == 'S' and player2[1] == 'P') || 
  		(player1[1] == 'P' and player2[1] == 'R'))
  	return player1
  else
  	return player2
  end
end

def self.get_competitor(branch)
	if branch.flatten(1).size != branch.size
		self.tournament_winner(branch)
	else
		branch
	end
end

def self.tournament_winner(tournament)
	player1 = self.get_competitor(tournament[0])
	player2 = self.get_competitor(tournament[1])

	self.winner(player1, player2)
end

end
