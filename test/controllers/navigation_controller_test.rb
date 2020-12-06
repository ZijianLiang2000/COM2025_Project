require 'test_helper'

class NavigationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get navigation_home_url
    assert_response :success
  end

  test "should get games" do
    get navigation_games_url
    assert_response :success
  end

  test "should get teams" do
    get navigation_teams_url
    assert_response :success
  end

  test "should get contact" do
    get navigation_contact_url
    assert_response :success
  end

end
