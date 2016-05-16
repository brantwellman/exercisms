class Squares
  VERSION = 2

  def initialize(num)
    @num = num
  end

  def square_of_sum
    total = 0
    until @num == 0 do
      total = total + @num
      @num -= 1
    end
    total**2
  end

  def sum_of_squares
    total = 0
    until @num == 0 do
      total = total + @num**2
      @num -= 1
    end
    total
  end
end
