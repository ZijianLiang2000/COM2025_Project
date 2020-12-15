class AddSeasonalTeams < ActiveRecord::Migration[5.1]
  def change

    create_join_table :users, :teams do |t|
      t.index [:user_id, :team_id]
      t.index [:team_id, :user_id]
    end

    # The following two lines of code are needed to be commented out when
    # database initially has Team objects, and deleted_all executed.
    # if not, the error cause new Team object created have index not starting from #1

    Team.destroy_all
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
    Team.import values, validate: true
  end
end
