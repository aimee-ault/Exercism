class Phrase
  attr_reader :words

  def initialize(phrase)
    @words = phrase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
    end
  end
end
