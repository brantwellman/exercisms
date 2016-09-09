require 'pry'

class Year
  class << self
    def leap?(year)
      (four_year(year) && !one_hundred_year?(year)) || four_hundred_year?(year)
    end

    protected
      def one_hundred_year?(year)
        year % 100 == 0
      end

      def four_hundred_year?(year)
        year % 400 == 0
      end

      def four_year(year)
        year % 4 == 0
      end
  end
end

module BookKeeping
  VERSION = 2
end
