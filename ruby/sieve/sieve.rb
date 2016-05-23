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
      until range.size < 1 do
        collect << range.first
        prime = range.first
        range.delete_if do |num|
          num % prime == 0
        end
      end
      collect
    end
  end
end
