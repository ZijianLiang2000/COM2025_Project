class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :homeTeamId, null: false
      t.integer :awayTeamId, null: false
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
