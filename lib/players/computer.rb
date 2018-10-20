module Players

  class Computer < Player

    def move (b)
      m = gets.strip
      if b.valid_move?(m)
        b.cells[m.to_i - 1] = self.token
        return m.to_s
      else
        puts "Invalid"
        self.move(b)
      end
    end
    end
    end
