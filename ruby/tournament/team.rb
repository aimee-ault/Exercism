class Team
  attr_reader :wins, :losses, :draws, :name

  def initialize(name:)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def win!
    @wins += 1
  end

  def lose!
    @losses += 1
  end

  def draw!
    @draws += 1
  end

  def points
    wins * Tournament::POINT_VALUES[:win] +
    draws * Tournament::POINT_VALUES[:draw] +
    losses * Tournament::POINT_VALUES[:loss]
  end

  def matches_played
    wins + losses + draws
  end
end
