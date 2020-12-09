require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    # This test will create a new game into db, and see if game counts increases by one.
    # Problem will occur if game couldn't be created, eg the generated primary key is the same as previous one.
    assert_difference('Game.count') do
      post games_url, params: { game: { awayTeamName: 'AtlantaHawks', awayTeamScore: 123, gameDate: '2020-10-03',
       gameWinnerId: 1, homeTeamName: 'BostonCeltics', homeTeamScore: 100 } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { awayTeamName: @game.awayTeamName, awayTeamScore: @game.awayTeamScore, gameDate: @game.gameDate, homeTeamName: @game.homeTeamName, homeTeamScore: @game.homeTeamScore } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
