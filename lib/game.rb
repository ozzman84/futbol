class Game
  attr_reader :game_id,
              :season,
              :type,
              :date_time,
              :away_team_id,
              :home_team_id,
              :away_goals,
              :home_goals,
              :venue,
              :venue_link
              
  def initialize(location)
    @game_id      = location[:game_id]
    @season       = location[:season]
    @type         = location[:type]
    @date_time    = location[:date_time]
    @away_team_id = location[:away_team_id]
    @home_team_id = location[:home_team_id]
    @away_goals   = location[:away_goals]
    @home_goals   = location[:home_goals]
    @venue        = location[:venue]
    @venue_link   = location[:venue_link]
  end
end
