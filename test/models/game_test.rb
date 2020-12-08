require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save empty game'do
    game = Game.new

    game.save
    refute game.valid?
  end

  test 'should not save duplicated id'do
  game1 = Game.new
  game1.id = 1
  game1.homeTeamId = 1
  game1.awayTeamId = 2
  game1.homeTeamName = "AtlantaHawks"
  game1.awayTeamName = "BostonCeltics"
  game1.gameDate = "2020-03-04"
  game1.save

  assert game1.valid?

  game2 = Game.new
  game2 = Game.new
  game2.id = 1
  game2.homeTeamId = 1
  game2.awayTeamId = 2
  game2.homeTeamName = "AtlantaHawks"
  game2.awayTeamName = "BostonCeltics"
  game2.gameDate = "2020-03-04"

  game2.save
  refute game2.valid?
end

end
