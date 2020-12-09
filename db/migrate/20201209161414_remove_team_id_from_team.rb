class RemoveTeamIdFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :teamId
  end
end
