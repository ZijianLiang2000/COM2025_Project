require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @game = games(:one)
    @game2 = games(:one)
    @team = teams(:one)
    @team2 = teams(:one)
  end

  test 'should not save empty game'do
    game = Game.new

    game.save
    refute game.valid?
  end

  test 'should not save duplicated id'do
  game1 = Game.new
  team1 = Team.new
  team1.teamName = @team.teamName
  team1.save
  
  assert team1.valid?

  game1.id = @game.id
  game1.homeTeamName = @game.homeTeamName
  game1.awayTeamName = @game.awayTeamName
  game1.gameDate = @game.gameDate
  game1.save

  assert game1.valid?

  game2 = Game.new
  game2.id = @game1.id
  game2.homeTeamName = @game2.homeTeamName
  game2.awayTeamName = @game2.awayTeamName
  game2.gameDate = @game2.awayTeamName

  game2.save
  refute game2.valid?
end

end
