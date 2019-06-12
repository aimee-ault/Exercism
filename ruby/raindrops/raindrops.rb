class Raindrops
  TRANSLATIONS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }.freeze

  def self.convert(number)
    output = ""
    TRANSLATIONS.each do |key, value|
      output << value if number % key == 0
    end
    output = number.to_s if output.empty?
    output
  end
end
