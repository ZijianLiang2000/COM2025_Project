class AssociateGameWithTeam < ActiveRecord::Migration[5.2]
  def change
    @game = Game.all
    @game.each do |game|
      game.teams = Team.where(teamName: game.awayTeamName) + Team.where(teamName: game.homeTeamName)
    end
  end

end
