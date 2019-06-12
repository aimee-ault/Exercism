class Clock
  MINUTES_IN_HOUR = 60.freeze
  HOURS_IN_DAY = 24.freeze

  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = (hour + minute / MINUTES_IN_HOUR) % HOURS_IN_DAY
    @minute = minute % MINUTES_IN_HOUR
  end

  def to_s
    format("%02d:%02d", hour, minute)
  end

  def + (clock)
    Clock.new(hour: hour + clock.hour, minute: minute + clock.minute)
  end

  def - (clock)
    Clock.new(hour: hour - clock.hour, minute: minute - clock.minute)
  end

  def == (clock)
    self.to_s == clock.to_s
  end
end
