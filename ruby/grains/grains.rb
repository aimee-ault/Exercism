class Grains
  TOTAL_SQUARES = 64.freeze

  def self.square(square)
    raise ArgumentError unless square.between?(1, TOTAL_SQUARES)
    2 ** (square - 1)
  end

  def self.total
    TOTAL_SQUARES.downto(1).map { |i| self.square(i) }.inject(:+)
  end
end
