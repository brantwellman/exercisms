class Hamming
  VERSION = 1

  def self.compute(dna_string1, dna_string2)
    arr1 = dna_string1.split("")
    arr2 = dna_string2.split("")
    compare_strand_lengths(arr1, arr2)
    ham_dist(arr1, arr2)
  end

  def self.compare_strand_lengths(str1, str2)
    raise ArgumentError unless str1.size == str2.size
  end

  def self.ham_dist(str1, str2)
    ham_dist = 0
    str1.each_with_index do |letter, index|
      ham_dist += 1 unless letter == str2[index]
    end
    ham_dist
  end

end
