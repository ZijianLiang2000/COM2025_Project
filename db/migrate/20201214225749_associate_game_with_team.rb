class AssociateGameWithTeam < ActiveRecord::Migration[5.2]
  def change
    # Method to associate all the game's with its corresponding home team and away team
    @game = Game.all
    @game.each do |game|
      # Define this game to associate to teams where:
      # one team from all teams that has same team name of game's home team
      # the other team from all teams that has same team name of game's away team
      game.teams = Team.where(teamName: game.awayTeamName) + Team.where(teamName: game.homeTeamName)
    end
  end

end
