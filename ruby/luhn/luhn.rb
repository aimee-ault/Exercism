class Luhn
  def self.valid?(number)
    digits = number.delete(' ').chars.map(&:to_i)
    check = digits.pop

    # A valid Luhn has at least 1 digit in addition to its check
    # It also must be fully numeric.
    unless digits.any? && is_numeric?(number.delete(' '))
      return false
    end

    sum = digits.reverse.each_slice(2).flat_map do |x,y|
      [(x * 2).divmod(10), y || 0]
    end.flatten.inject(:+)

    check.zero? ? sum % 10 == 0 : (10 - sum % 10) == check
  end

  def self.is_numeric?(number)
    number.match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) == nil ? false : true
  end
end
