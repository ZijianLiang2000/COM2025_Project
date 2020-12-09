class RemoveAwayTeamIdFromTableTeam < ActiveRecord::Migration[5.1]
  def up
    remove_column :games, :awayTeamId, :int
  end
  def down
    add_column :games, :awayTeamId, :int
  end
end
