class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams, do |t|
      t.primary_key :id
      t.string :teamName, null: false
      t.integer :gamesPlayedId

      t.timestamps
    end
  end
end
