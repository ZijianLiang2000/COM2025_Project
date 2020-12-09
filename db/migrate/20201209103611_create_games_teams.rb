class CreateGamesTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :games_teams do |t|
      t.references :team, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
