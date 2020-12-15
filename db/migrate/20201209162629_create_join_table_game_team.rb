# Create many to many join table between games and teams
# Only able to associate by this way by their IDs
class CreateJoinTableGameTeam < ActiveRecord::Migration[5.1]
  def change
     # In case run migration again, to avoid interference, would drop this table if it already exists
    drop_table :games_teams, if_exists: true
    create_join_table :games, :teams do |t|
      t.index [:game_id, :team_id]
      t.index [:team_id, :game_id]
    end
  end
end
