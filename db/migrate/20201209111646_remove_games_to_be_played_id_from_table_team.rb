class RemoveGamesToBePlayedIdFromTableTeam < ActiveRecord::Migration[5.1]
  def up
    remove_column :teams, :gamesToBePlayedId
  end
  def down
    add_column :teams, :gamesToBePlayedId, :int
  end
end
