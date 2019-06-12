class Series
  attr_reader :numbers, :digits

  def initialize(digits)
    @digits = digits
    @numbers = digits.chars.map(&:to_i)
  end

  def slices(chunk_size)
    raise ArgumentError if chunk_size > digits.length
    @numbers.each_cons(chunk_size).map(&:join)
  end
end
