class FixColumnName < ActiveRecord::Migration[5.1]
  def up
    rename_column :teams, :gamesId, :gameId
  end
  def def down 
    rename_column :teams, :gameId, :gamesPlayedId
  end
end
