class ResistorColorDuo
  COLORS = %w(black brown red orange yellow green blue violet grey white).freeze

  def self.value(colors)
    colors.each_with_object("") do |color, number|
      number << COLORS.index(color).to_s
    end.to_i
  end
end
