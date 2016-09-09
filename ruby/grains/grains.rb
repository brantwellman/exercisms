require 'pry'

class Grains

  def self.square(square_num)
    grains = 1
    if square_num == 1
      grains
    else
      (square_num - 1).times do
        grains = grains * 2
      end
    end
    grains
  end

  def self.total
    squares = [1]
    63.times do
      squares << squares.last * 2
    end
    squares.inject() { |sum, square| sum + square }
  end
end
