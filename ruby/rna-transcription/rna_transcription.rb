require 'pry'

class Complement
  VERSION = 3

  def self.of_dna(strand)
    nucleotides = strand.split("")
    nucleotides.map do |nucleotide|
      raise_error(nucleotide)
      strand_converter[nucleotide]
    end.join
  end

  def self.strand_converter
    { 'C'=> 'G', 'G'=> 'C', 'T'=> 'A', 'A'=> 'U'}
  end

  def self.raise_error(nucleotide)
    dna_nucs = ['C', 'G', 'T', 'A']
    raise ArgumentError unless dna_nucs.include?(nucleotide)
  end
end
