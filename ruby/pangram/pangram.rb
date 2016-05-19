class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    alph = ("a".."z").to_a
    sanitized_str = str.downcase.gsub(/[^a-z]/, '')
    letters = sanitized_str.split("").uniq.sort
    letters.delete_if {|x| x == " "}
    letters == alph
  end
end
