# Migration to create Games table
class CreateGames < ActiveRecord::Migration[5.1]
  def change
    # In case run migration again, to avoid interference, would drop this table if it already exists
    drop_table :games, if_exists: true
    create_table :games do |t|
      t.string :homeTeamName, null: false
      t.string :awayTeamName, null: false
      t.integer :gameWinnerId
      t.integer :homeTeamScore
      t.integer :awayTeamScore
      t.date :gameDate, null: false

      t.timestamps
    end
  end
end
