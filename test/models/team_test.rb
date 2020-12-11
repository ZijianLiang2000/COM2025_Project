require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @team = teams(:one)
  end

  test 'team can be saved with no games' do
    team1 = Team.new
    team1.teamName = "ExampleTeam"
    team1.save
    
    assert team1.valid?
  end

end
