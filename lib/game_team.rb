class GameTeam
  attr_reader :game_id,
              :team_id,
              :hoa,
              :result,
              :settled_in,
              :head_coach,
              :goals,
              :shots,
              :tackles,
              :pim,
              :powerplayopportunities,
              :powerplaygoals,
              :faceoffwinpercentage,
              :giveaway



  def initialize(location)
    require "pry"; binding.pry
    @game_id              = location[:game_id]
    @team_id              = location[:team_id]
    @hoa                  = location[:hoa]
    @result               = location[:result]
    @settled_in           = location[:settled_in]
    @head_coach           = location[:head_coach]
    @goals                = location[:goals]
    @shots                = location[:shots]
    @tackles              = location[:tackles]
    @pim                  = location[:pim]
    @powerPlayOpp         = location[:powerPlayOpp]
    @powerplaygoals       = location[:powerplaygoals]
    @faceoffwinpercentage = location[:faceoffwinpercentage]
    @giveaway             = location[:giveaway]
  end
end
