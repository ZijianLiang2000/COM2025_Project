require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @team = teams(:one)
  end


  test 'team can not be saved with no team name' do
    team1 = Team.new
    team1.apiId = 60
    team1.save
    
    refute team1.valid?
  end

  test 'team can not be saved with no apiId' do
    team1 = Team.new
    team1.teamName = "ExampleTeam"
    team1.save
    
    refute team1.valid?
  end
  
  test 'team can not be saved with duplicate teamName' do
    team1 = Team.new
    team1.teamName = "Example1"
    team1.apiId = 60
    team1.save
    assert team1.valid?

    team2 = Team.new
    team1.teamName = "Example1"
    team1.apiId = 61
    team1.save
    refute team2.valid?

  end

end
