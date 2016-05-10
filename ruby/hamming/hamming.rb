require 'pry'

class Hamming
  VERSION = 1

  def self.compute(dna_string1, dna_string2)
    arr1 = dna_string1.split("")
    arr2 = dna_string2.split("")
    ham_dist = 0

    compare_strand_lengths(arr1, arr2)

    arr1.each_with_index do |letter, index|
      ham_dist += 1 unless letter == arr2[index]
    end
    ham_dist
  end

  def self.compare_strand_lengths(str1, str2)
    raise ArgumentError unless str1.size == str2.size
  end

end
