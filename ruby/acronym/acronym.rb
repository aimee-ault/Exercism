class Acronym
  def self.abbreviate(string)
    delimiters = [',', '-', ' ']
    string.split(Regexp.union(delimiters)).map(&:chr).join.upcase
  end
end
