require 'pry'

class Fixnum
  VERSION = 1

  def to_roman
    arabic_to_roman = {
      1 => 'I'
    }
    roman_num = ''
    arabic_num = self
    arabic_to_roman.each do |arabic, roman|
      while arabic_num > 0
        roman_num = roman_num + arabic_to_roman[arabic]
        arabic_num -= arabic
      end
    end
    roman_num
  end

end
