require 'pry'

class Year

  def self.leap?(year)
    (four_year(year) && !one_hundred_year?(year)) || four_hundred_year?(year)
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
