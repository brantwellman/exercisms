class Complement
  VERSION = 3

  def self.of_dna(strand)
    case strand
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'
    end
  end
end

# `G` -> `C`
# `C` -> `G`
# `T` -> `A`
# `A` -> `U`
