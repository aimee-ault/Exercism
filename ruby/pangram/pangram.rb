class Pangram
  def self.pangram?(input)
    input.downcase.scan(/[a-z]/).uniq.sort == ('a'..'z').to_a
  end
end
