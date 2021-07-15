require './lib/game'
require 'CSV'
require 'simplecov'

SimpleCov.start
RSpec.describe Game do
  before(:each) do
    @game = Game.new('./data/games.csv')
  end

  it 'exists & has attributes' do
    expect(@game).to be_a(Game)
    expect(@game.game_id).to be_a(Hash)
    expect(@game.season).to be_a(Hash)
    expect(@game.type).to be_a(Hash)
    expect(@game.date_time).to be_a(Hash)
    expect(@game.away_team_id).to be_a(Hash)
    expect(@game.home_team_id).to be_a(Hash)
    expect(@game.away_goals).to be_a(Hash)
    expect(@game.home_goals).to be_a(Hash)
    expect(@game.venue).to be_a(Hash)
    expect(@game.venue_link).to be_a(Hash)
  end
end
