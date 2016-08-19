require 'pry'

class Prime

  def self.nth(number_of_prime)
    raise_error(number_of_prime)
    primes = [2]
    num = 2
    until primes.size == number_of_prime
      num = num += 1
      if !primes.any? { |prime_num| num % prime_num == 0}
        primes.push(num)
      end
    end
    primes.last
  end

  def self.raise_error(input)
    raise ArgumentError unless input > 0
  end

end
