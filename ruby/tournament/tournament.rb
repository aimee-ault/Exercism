require_relative 'team'

class Tournament
  POINT_VALUES = { win: 3, draw: 1, loss: 0 }.freeze
  OUTPUT_FORMAT = "%-30s | %2s | %2s | %2s | %2s | %2s\n".freeze
  attr_reader :games

  def initialize(input)
    @games = input.split("\n")
    @teams = teams
  end

  def score
    games.each do |game|
      team_1, team_2, result = game.split(";")
      if result == "win"
        teams[team_1].win! && teams[team_2].lose!
      elsif result == "loss"
        teams[team_1].lose! && teams[team_2].win!
      elsif result == "draw"
        teams[team_1].draw! && teams[team_2].draw!
      end
    end
    self
  end

  def output
    [header, team_stats_output].join
  end

  def header
    "Team                           | MP |  W |  D |  L |  P\n"
  end

  def team_stats_output
    return unless teams.any?
    lines = []
    teams.sort_by { |_k, team| [-team.points, team.name] }.each do |key, team|
      stats = [team.name, team.matches_played, team.wins, team.draws, team.losses, team.points]
      lines << format(OUTPUT_FORMAT, *stats)
    end
    lines
  end

  def self.tally(input)
    new(input).score.output
  end

  def teams
    @teams ||= games.each_with_object({}) do |game, teams|
      team_1, team_2, result = game.split(";")
      teams[team_1] ||= Team.new(name: team_1)
      teams[team_2] ||= Team.new(name: team_2)
    end
  end
end
