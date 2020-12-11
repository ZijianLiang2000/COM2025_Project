class Game < ApplicationRecord
    # presence would validate whether attribute exists
    #uniqueness would validate whether attribute isn't redundant
    # deleted presence and uniqueness function for 'id'
    has_and_belongs_to_many :teams
    
    # All NBA Team names to validate home team name and away team name. 
    nbaTeams = ["Atlanta Hawks","Boston Celtics","Brooklyn Nets","Charlotte Hornets",
        "Chicago Bulls","Cleveland Cavaliers","Dallas Mavericks","Denver Nuggets","Detroit Pistons","Golden State Warriors","Houston Rockets",
        "Indiana Pacers","Los Angeles Clippers","Los Angeles Lakers","Memphis Grizzlies","Miami Heat","Milwaukee Bucks","Minnesota Timberwolves",
        "New Orleans Pelicans","New York Knicks","Oklahoma City Thunders","Orlando Magic","Philadelphia 76ers","Phoenix Suns","Portland Trail Blazers",
        "Sacramento Kings","San Antonio Spurs","Toronto Raptors","Utah Jazz","Washington Wizards"]

    validates :homeTeamName, presence: true, inclusion: { in: nbaTeams, message: "%{value} is not a valid team, please re-enter a NBA team" }
    validates :awayTeamName, presence: true, inclusion: { in: nbaTeams, message: "%{value} is not a valid team, please re-enter a NBA team" }
    validates :gameDate, presence: true

end
