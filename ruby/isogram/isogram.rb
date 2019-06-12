class Isogram
  def self.isogram?(expression)
    expression.downcase.scan(/[a-z]/).uniq!.nil?
  end
end
