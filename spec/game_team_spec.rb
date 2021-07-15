require './lib/game_team'
require 'simplecov'
require 'game_team'

SimpleCov.start

RSpec.describe GameTeam do
  before(:each) do
    @game_team = GameTeam.new('./data/game_teams.csv')
    end

  it 'exists w/attributes' do
    expect(@game_team).to be_a(GameTeam)
    expect(@game_team.game_id).to be_a(Hash)
    expect(@game_team.team_id).to be_a(Hash)
    expect(@game_team.hoa).to be_a(Hash)
    expect(@game_team.result).to be_a(Hash)
    expect(@game_team.setttled_in).to be_a(Hash)
    expect(@game_team.head_coach).to be_a(Hash)
    expect(@game_team.goals).to be_a(Hash)
    expect(@game_team.shots).to be_a(Hash)
    expect(@game_team.tackles).to be_a(Hash)
    expect(@game_team.pim).to be_a(Hash)
    expect(@game_team.powerplayopportunities).to be_a(Hash)
    expect(@game_team.powerplaygoals).to be_a(Hash)
    expect(@game_team.faceoffwinpercentage).to be_a(Hash)
    expect(@game_team.giveaway).to be_a(Hash)
  end
end
