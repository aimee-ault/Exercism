class Hamming
  def self.compute(nucleotide_1, nucleotide_2)
    raise ArgumentError unless nucleotide_1.length == nucleotide_2.length
    distance = 0
    nucleotide_1.chars.each_with_index do |nucleotide, index|
      distance += 1 unless nucleotide == nucleotide_2.chars[index]
    end
    distance
  end
end
