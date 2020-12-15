# Migration to create Teams table
class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    # In case run migration again,to avoid interference, would drop this table if it already exists
    drop_table :teams, if_exists: true
    create_table :teams do |t|
      t.string :teamName, null: false
      t.integer :apiId
      t.timestamps
    end
  end
end
