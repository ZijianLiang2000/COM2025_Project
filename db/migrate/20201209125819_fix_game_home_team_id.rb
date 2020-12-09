class FixGameHomeTeamId < ActiveRecord::Migration[5.1]
  def up
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    rename_column :games, :homeTeamId, :teamId
  end
  def def down 
    rename_column :games, :teamId, :hometeamId
  end
end
