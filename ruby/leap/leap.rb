class Year

  def self.leap?(year)
    if four_hundred_year?(year)
      true
    elsif one_hundred_year?(year)
      false
    else
      four_year(year)
    end
  end

  private
    def self.one_hundred_year?(year)
      year % 100 == 0
    end

    def self.four_hundred_year?(year)
      year % 400 == 0
    end

    def self.four_year(year)
      year % 4 == 0
    end
end

module BookKeeping
  VERSION = 2
end
