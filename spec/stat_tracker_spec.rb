require 'rspec'
require './lib/stat_tracker'
require 'simplecov'
require 'CSV'
require './lib/game'
SimpleCov.start

RSpec.describe StatTracker do
  before(:each) do
    game_path       = './data/games.csv'
    team_path       = './data/teams.csv'
    game_teams_path = './data/game_teams.csv'

    @locations = {
      games:      game_path,
      teams:      team_path,
      game_teams: game_teams_path
    }

    @stat_tracker = StatTracker.new(@locations)
  end

  it ' test' do
    expect(@stat_tracker.generate_stats(@locations[:games], Game)).to be_a(Game)
  end

  it 'exists' do
    expect(@stat_tracker).to be_a StatTracker
  end

  xit 'returns #highest_total_score' do
    expect(@stat_tracker.highest_total_score).to eq 11
  end

  xit 'returns #lowest_total_score' do
    expect(@stat_tracker.lowest_total_score).to eq 0
  end

  xit 'returns #percentage_home_wins' do
    expect(@stat_tracker.percentage_home_wins).to eq 0.44
  end

  xit 'returns #percentage_visitor_wins' do
    expect(@stat_tracker.percentage_visitor_wins).to eq 0.36
  end

  xit 'returns #percentage_ties' do
    expect(@stat_tracker.percentage_ties).to eq 0.20
  end

  xit 'returns #count_of_games_by_season' do
    expected = {
      "20122013"=>806,
      "20162017"=>1317,
      "20142015"=>1319,
      "20152016"=>1321,
      "20132014"=>1323,
      "20172018"=>1355
    }
    expect(@stat_tracker.count_of_games_by_season).to eq expected
  end

  xit 'return #average_goals_per_game' do
    expect(@stat_tracker.count_of_teams).to eq 32
  end

  xit 'returns #average_goals_by_season' do
    expected = {
      "20122013"=>4.12,
      "20162017"=>4.23,
      "20142015"=>4.14,
      "20152016"=>4.16,
      "20132014"=>4.19,
      "20172018"=>4.44
    }
    expect(@stat_tracker.average_goals_by_season).to eq expected
  end
end
