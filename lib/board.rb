class Board

  attr_accessor :cells

def initialize
  @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

end

def reset!
  @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end


def display


  for ii in 0..2
    my_string = ""
    for jj in 0..2
        my_string  << " " if jj == 0
        my_string << @cells[ii*3+jj]
        my_string << " | " unless jj == 2
        my_string  << " " if jj == 2
    end
    puts my_string
    puts "-----------" unless ii == 2
  end


  def position (i)
    @cells[i.to_i-1]
  end

  def full?
    !@cells.any?{ |element| element == " "}
  end

  def turn_count
    @cells.count{|x|x != " "}
  end

  def taken? (i)
      return @cells[i.to_i-1] == "X" || @cells[i.to_i-1] == "O"
  end

  def valid_move?(i)
    if i.to_i.between?(1,9)
      !self.taken?(i)
    else
      false
    end
  end

end

def update(ind , player)
  @cells[ind.to_i-1] = "X"
end



end