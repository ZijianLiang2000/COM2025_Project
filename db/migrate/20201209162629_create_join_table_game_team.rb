class CreateJoinTableGameTeam < ActiveRecord::Migration[5.1]
  def change
    drop_table :games_teams, if_exists: true
    create_join_table :games, :teams do |t|
      t.index [:game_id, :team_id]
      t.index [:team_id, :game_id]
    end
  end
end
