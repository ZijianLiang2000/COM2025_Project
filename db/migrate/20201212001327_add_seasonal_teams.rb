class AddSeasonalTeams < ActiveRecord::Migration[5.1]
  def change
    #To avoid contradiction, drop Users_teams association table if created 

    drop_table :users, if_exists: true
  #  Create devise users table
    create_table :users do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

      t.timestamps
    end

    drop_table :users_teams, if_exists: true
    # Create  Users_teams association table
    create_join_table :users, :teams do |t|
      t.index [:user_id, :team_id]
      t.index [:team_id, :user_id]
    end

    # The following two lines of code are needed to be commented out when
    # database initially has Team objects, and deleted_all executed.
    # if not, the error cause new Team object created have index not starting from #1

    # To avoid contradiction and messing up ID of newly created teams
    # If teams already created, in case running migrations again, would destroy all first
    Team.destroy_all
    # Rearrange newly created Team ID back to start from 1
    Team.reset_pk_sequence
    
    values = [{teamName: 'Atlanta Hawks', apiId: 1},
      {teamName: 'Boston Celtics', apiId: 2},
      {teamName: 'Brooklyn Nets', apiId: 4},
      {teamName: 'Charlotte Hornets', apiId: 5},
      {teamName: 'Chicago Bulls', apiId: 6},
      {teamName: 'Cleveland Cavaliers', apiId: 7},
      {teamName: 'Dallas Mavericks', apiId: 8},
      {teamName: 'Denver Nuggets', apiId: 9},
      {teamName: 'Detroit Pistons', apiId: 10},
      {teamName: 'Golden State Warriors', apiId: 11},
      {teamName: 'Houston Rockets', apiId: 14},
      {teamName: 'Indiana Pacers', apiId: 15},
      {teamName: 'LA Clippers', apiId: 16},
      {teamName: 'Los Angeles Lakers', apiId: 17},
      {teamName: 'Memphis Grizzlies', apiId: 19},
      {teamName: 'Miami Heat', apiId: 20},
      {teamName: 'Milwaukee Bucks', apiId: 21},
      {teamName: 'Minnesota Timberwolves', apiId: 22},
      {teamName: 'New Orleans Pelicans', apiId: 23},
      {teamName: 'New York Knicks', apiId: 24},
      {teamName: 'Oklahoma City Thunder', apiId: 25},
      {teamName: 'Orlando Magic', apiId: 26},
      {teamName: 'Philadelphia 76ers', apiId: 27},
      {teamName: 'Phoenix Suns', apiId: 28},
      {teamName: 'Portland Trail Blazers', apiId: 29},
      {teamName: 'Sacramento Kings', apiId: 30},
      {teamName: 'San Antonio Spurs', apiId: 31},
      {teamName: 'Toronto Raptors', apiId: 38},
      {teamName: 'Utah Jazz', apiId: 40},
      {teamName: 'Washington Wizards', apiId: 41}]

    # imports and validates all above value by gem
    Team.import values, validate: true
  end
end
