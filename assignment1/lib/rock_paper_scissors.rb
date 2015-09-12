class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if(player1[1]==player2[1])
      return player1
    elsif((player1[1] == 'R'&& player2[1] == 'S')||(player1[1] == 'S'&& player2[1] == 'P') ||(player1[1] == 'P'&& player2[1] == 'R') )
      return player1
    elsif((player2[1] == 'R'&& player1[1] == 'S')||(player2[1] == 'S'&& player1[1] == 'P') ||(player2[1] == 'P'&& player1[1] == 'R') )
      return player2
    else
      raise RockPaperScissors::NoSuchStrategyError ,"Strategy must be one of R,P,S"
    end
  end

   def self.tournament_winner(tournament)
    if(tournament[0][0].is_a?(String) )
      #Base case: using already defined method 'winner'
      winner(tournament[0], tournament[1])
    else
      #Calling recursively tournament
      winner([tournament_winner(tournament[0]), tournament_winner(tournament[1])][0],[tournament_winner(tournament[0]), tournament_winner(tournament[1])][1])
    end
  end

 end
