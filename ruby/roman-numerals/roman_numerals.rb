require 'pry'

class Fixnum
  VERSION = 1

  def to_roman
    arabic_to_roman = {
      5 => 'V',
      4 => 'IV',
      1 => 'I'
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
