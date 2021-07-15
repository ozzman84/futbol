class Team
  attr_reader :team_id,
              :franchiseid,
              :teamname,
              :abbreviation,
              :stadim,
              :link

  def initialize(location)
    @team_id      = team_id
    require "pry"; binding.pry
    @franchiseid  = location[:franchiseid]
    @teamname     = location[:teamname]
    @abbreviation = location[:abbreviation]
    @stadim       = location[:stadim]
    @link         = location[:link]
  end
end
