require 'pry'

class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    range = (2..@num).to_a
    collect = []
    if @num < 2
      []
    else
      iterations = range.size
      # binding.pry
      iterations.times do
        # binding.pry
        collect << range.first
        range.delete_if do |num|
          prime = range.first
          num % prime == 0
        end
      end
      collect
    end
  end
end
