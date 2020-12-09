class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams, do |t|
      # t.has_and_belongs_to_many :games, primary_key: 'teamId', foreign_key: 'gamesPlayedId', foreign_key: 'gamesToBePlayedId'
      t.primary_key :teamId
      t.integer :teamId, null: false
      t.string :teamName, null: false
      t.integer :gamesPlayedId

      t.timestamps
    end
    add_foreign_key :gameId, :games
  end
end
