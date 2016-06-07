require 'pry'

class Fixnum
  VERSION = 1

  def to_roman
    arabic_to_roman = {
      100 => 'C',
      90  => 'XC',
      50  => 'L',
      40  => 'XL',
      10  => 'X',
      9   => 'IX',
      5   => 'V',
      4   => 'IV',
      1   => 'I'
    }

    roman_num = ''
    arabic_num = self
    arabic_to_roman.each_pair do |arabic, roman|
      while arabic_num >= arabic
        arabic_num = arabic_num -= arabic
        roman_num = roman_num + roman
      end
    end
    roman_num
  end

end
