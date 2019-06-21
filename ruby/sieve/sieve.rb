require 'prime'

class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    Prime.each(number).inject([], :<<)
  end
end
