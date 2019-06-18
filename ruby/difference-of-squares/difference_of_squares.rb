class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).inject(:+) ** 2
  end

  def sum_of_squares
    (1..number).map { |i| i**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
