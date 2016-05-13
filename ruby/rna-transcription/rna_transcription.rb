require 'pry'

class Complement
  VERSION = 3

  def self.of_dna(strand)
    nucleotides = strand.split("")
    dna_nucs = ['C', 'G', 'T', 'A']
    nucleotides.map do |nucleotide|
      raise ArgumentError unless dna_nucs.include?(nucleotide)
      strand_converter[nucleotide]
    end.join
  end

  def self.strand_converter
    { 'C'=> 'G', 'G'=> 'C', 'T'=> 'A', 'A'=> 'U'}
  end
end
