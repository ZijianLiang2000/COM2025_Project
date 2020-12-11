require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @game = games(:one)
    @team = teams(:one)
  end

  test 'should not save empty game'do
    game = Game.new

    game.save
    refute game.valid?
  end

  test 'should save different games with same team'do
  game1 = Game.new

  team1 = Team.new
  team1.id = 4
  team1.teamName = "Charlotte Hornets"
  team1.save

  game1.id = 3
  game1.homeTeamName = "Charlotte Hornets"
  game1.awayTeamName = "Boston Celtics"
  game1.gameDate = "2020-04-12"
  game1.save
  assert game1.valid?
  end

  test 'should not save duplicated id'do
    game1 = Game.new
    team1 = Team.new
    team1.id = 4
    team1.teamName = "Charlotte Hornets"
    team1.save
    
    assert team1.valid?

    game1.id = 3
    game1.homeTeamName = "Miami Heat"
    game1.awayTeamName = "Boston Celtics"
    game1.gameDate = "2020-04-12"
    game1.save

    assert game1.valid?

    game2 = Game.new
    game2.id = games(:two).id
    game2.homeTeamName = games(:two).homeTeamName
    game2.awayTeamName = games(:two).awayTeamName
    game2.gameDate = games(:two).awayTeamName

    game2.save
    refute game2.valid?
  end

  # test 'should not save game with invalid homeTeam name'do
  # game1 = Game.new

  # team1 = Team.new
  # team1.id = 4
  # team1.teamName = "Charlotte Hornets"
  # team1.save

  
  # end

end
