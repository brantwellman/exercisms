class Squares
  VERSION = 2

  def initialize(num)
    @num = num
  end

  def square_of_sum
    number = @num
    total = 0
    @num.times do
      total = total + number
      number -= 1
    end
    total**2
  end

  def sum_of_squares
    number = @num
    total = 0
    @num.times do
      total = total + number**2
      number -= 1
    end
    total
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
