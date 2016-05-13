require 'prime'

class Raindrops
  VERSION = 1

  RAINDROPS_INTERPRETER = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(num)
    factors = Prime.prime_division(num).first(5)
    translation = factors.flatten.uniq.sort.map {
      |f| RAINDROPS_INTERPRETER[f]
    }.join

    translation.empty? ? num.to_s : translation
  end
end