class  Game
attr_accessor :board , :player_1 , :player_2

 WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

  def initialize (p1 = Players::Human.new("X"), p2 = Players::Human.new("O"), board = Board.new)
    #binding.pry
    self.player_1 = p1
    self.player_2 = p2
    self.board = board
  end

  def current_player
    len = self.board.cells.join.gsub(" ", "").length
    if len.odd?
      self.player_2
    else
      self.player_1
    end
  end

  def won?
    WIN_COMBINATIONS.each {|combo|
      if board.cells[combo[0]] == board.cells[combo[1]] && board.cells[combo[0]] == board.cells[combo[2]] && board.cells[combo[1]] == board.cells[combo[2]]
      if board.cells[combo[0]] != " " && board.cells[combo[1]] != " " && board.cells[combo[2]] != " "
        #binding.pry
        return combo
       end
     end
    }
    return false

  end

  def draw?
    len = self.board.cells.join.gsub(" ", "").length
    if len == 9 && !won?
      return true
    else
      return false
    end
  end

  def over?
    if draw? || won?
      return true
    else
      return false
    end
  end

  def winner
    if self.won?
      token = self.board.cells[self.won?[0]]
    else
      nil
    end
  #  token = self.board.cells[self.won?[0]]

  end

  def turn
    self.current_player.move(self.board)
  end

  def play
    while !over?
      turn
    end

    if draw?
      puts "Cat's Game!"
    elsif won?
      puts "Congratulations #{self.winner}!"
      #binding.pry
    end
  end


end
