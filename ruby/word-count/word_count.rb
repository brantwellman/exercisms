require 'pry'

class Phrase
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def word_count
    words = @str.split(" ")
    counts = Hash.new
    words.each do |word|
      # binding.pry
      counts[word] ||= 1
      # counts[word] += 1
    end
    counts
  end

end
