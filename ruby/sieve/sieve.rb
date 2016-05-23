class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    if @num < 2
      []
    else
      primes_collection
    end
  end

  def primes_collection
    range = (2..@num).to_a
    collect = []
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
