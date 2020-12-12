class AddUsersToTeams < ActiveRecord::Migration[5.1]
  # def change
  # end
  def up

    create_join_table :Teams, :Users do |t|
      t.index [:team_id, :user_id]
      t.index [:user_id, :team_id]
    end

    user = User.first

    Team.all.each do |team|
      team.users = user
      team.save!
    end

  end

  def down
    Team.all do |team|
      team.users = nil
      team.save!
  end
end
