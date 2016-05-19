class Pangram

  def self.is_pangram?(str)
    alph = ("a".."z").to_a
    letters = str.downcase.split("").uniq.sort
    letters.delete_if {|x| x == " "}
    letters == alph
  end
end
