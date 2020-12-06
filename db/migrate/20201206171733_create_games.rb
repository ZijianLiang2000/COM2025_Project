class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :homeTeamId
      t.Integer :awayTeamId
      t.string :homeTeamName
      t.string :awayTeamName
      t.integer :gameWinnerId
      t.integer :homeTeamScore
      t.integer :awayTeamScore
      t.date :gameDate

      t.timestamps
    end
  end
end
