require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @team = teams(:one)
  end

  test 'team can be saved with no games' do
    team = Team.new

    team.save
    assert team.valid?
  end

end
