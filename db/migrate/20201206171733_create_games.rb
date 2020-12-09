class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      # t.has_and_belongs_to_many :teams, polymorphic: { default: 'Photo' }, primary_key: 'id', foreign_key: 'homeTeamId', foreign_key: 'awayTeamId'
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
    add_foreign_key :homeTeamId, :teams
    add_foreign_key :awayTeamId, :teams
  end
end
