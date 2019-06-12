class Matrix
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def columns
    rows.transpose
  end

  def rows
    str.split("\n").map do |row|
      row.split.map(&:to_i)
    end
  end
end
