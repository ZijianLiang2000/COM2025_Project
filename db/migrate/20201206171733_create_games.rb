class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      # t.has_and_belongs_to_many :teams, polymorphic: { default: 'Photo' }, primary_key: 'id', foreign_key: 'homeTeamId', foreign_key: 'awayTeamId'
      t.integer :id, primary_key: true
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
