class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.belongs_to :teams, primary_key: 'id', foreign_key: 'homeTeamId', foreign_key: 'awayTeamId'
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
