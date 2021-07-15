require './lib/team'
require 'simplecov'
require 'CSV'

SimpleCov.start

RSpec.describe Team do
  before(:each) do
    @team = Team.new('./data/teams.csv')
    end

  it 'exists w/attributes' do
    expect(@team).to be_a(Team)
    expect(@team.team_id).to be_a(Hash)
    expect(@team.franchiseid).to be_a(Hash)
    expect(@team.teamname).to be_a(Hash)
    expect(@team.abbreviation).to be_a(Hash)
    expect(@team.stadim).to be_a(Hash)
    expect(@team.link).to be_a(Hash)
  end
end
