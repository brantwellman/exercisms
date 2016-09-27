require 'pry'

class Phrase
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def word_count
    words = @str.split(/[, ]/)
    words.map! do |word|
      word.downcase.gsub(/^'|'$/, "").gsub(/[,]/, " ").gsub(/[^a-z0-9']/, "")
    end
    words.reject! { |word| word.empty? }
    set_word_hash(words)
  end

  def set_word_hash(word_array)
    counts = Hash.new
    word_array.each do |word|
      if counts[word]
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end

module BookKeeping
  VERSION = 1
end
