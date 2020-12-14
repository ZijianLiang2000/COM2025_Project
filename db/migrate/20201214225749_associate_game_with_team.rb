class AssociateGameWithTeam < ActiveRecord::Migration[5.2]
  def up
    @game = Game.all
    @game.each do |game|
      game.teams = Team.where(teamName: game.awayTeamName) + Team.where(teamName: game.homeTeamName)
    end
  end

  def down
    @game = Game.all
    @game.each do |game|
      game.teams = nil
    end
  end
end
