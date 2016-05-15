require 'prime'

class Raindrops
  VERSION = 1

  def self.convert(num)
    prime_factors_to_seven = Prime.prime_division(num).map { |prime| prime[0] }[0..3]


    return num.to_s unless prime_factors_to_seven.any? { |prime| [3, 5, 7].include? prime}

    prime_factors_to_seven.map { |num| drop_converter[num] }.compact.join
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
