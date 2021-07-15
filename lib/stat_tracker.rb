require 'CSV'

class StatTracker
  attr_reader :games,
              :teams,
              :game_teams

  def initialize(locations)
    @games      = locations[:games]
    @teams      = locations[:teams]
    @game_teams = locations[:game_teams]
  end

  def generate_stats(location, object)
    csv = CSV.read(location, headers: true)
    x = csv.map do |row|
      object.new(row)
    end
  end

  def highest_total_score

  end
end
