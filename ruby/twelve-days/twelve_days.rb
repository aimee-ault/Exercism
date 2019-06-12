class TwelveDays
  ORDINAL_DAYS = ["first", "second", "third", "fourth", "fifth", "sixth",
    "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

  PRESENTS = ["a Partridge in a Pear Tree.",
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ].freeze

  def self.song
    (0..ORDINAL_DAYS.count-1).map {|i| verse(i) }.join("\n")
  end

  def self.verse(day)
    "On the #{ORDINAL_DAYS.at(day)} day of Christmas my true love gave to me: #{presents_for_day(day)}"
  end

  def self.presents_for_day(day)
    lyrics = day.downto(1).map { |i| PRESENTS.at(i) }.join(", ")
    lyrics << ", and " unless day.zero?
    lyrics << PRESENTS.first
    lyrics << "\n"
    lyrics
  end
end
