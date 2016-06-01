
class Fixnum
  VERSION = 1
  
  ARABIC_TO_ROMAN = {
    1 => 'I'
  }

  def to_roman
    ARABIC_TO_ROMAN[self]
  end

end
