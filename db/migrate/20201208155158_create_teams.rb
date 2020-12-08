class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :teamId
      t.string :teamName
      t.integer :gamesPlayedId
      t.integer :gamesToBePlayedId

      t.timestamps
    end
  end
end
