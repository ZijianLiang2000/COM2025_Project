class CreatePostsTags < ActiveRecord::Migration[5.1]
  def change
    add_column :games_teams, :team_Name, :string
    add_index :games_teams, :team_Name
    #Ex:- add_index("admin_users", "username")
  end
end
