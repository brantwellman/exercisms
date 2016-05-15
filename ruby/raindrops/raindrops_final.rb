require 'prime'

class Raindrops
  VERSION = 1

  def self.convert(num)
    factors = Prime.prime_division(num)
    prime_factors = factors.map { |prime| prime[0] }
    prime_factors_to_seven = prime_factors[0..3]
    return num.to_s unless prime_factors_to_seven.any? { |drop| [3, 5, 7].include? drop}
    prime_factors_to_seven.map do |num|
      drop_converter[num]
    end.compact.join
  end

  def self.drop_converter
    {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
  end
end


# If the number contains 3 as a prime factor, output 'Pling'.
# - If the number contains 5 as a prime factor, output 'Plang'.
# - If the number contains 7 as a prime factor, output 'Plong'.
# - If the number does not contain 3, 5, or 7 as a prime factor,
#  just pass the number's digits straight through.
