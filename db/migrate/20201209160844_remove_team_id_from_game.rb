class RemoveTeamIdFromGame < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :teamId
    remove_column :teams, :gamesId
  end
end
