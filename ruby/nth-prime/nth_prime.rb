require 'pry'

class Prime

  def self.nth(number_of_prime)
    primes = [2]
    until primes.size == number_of_prime
      num = primes[-1] + 1

      if !primes.any? { |prime_num| num % prime_num == 0}
        primes.push(num)
      end

    end
    primes.last
  end

end
