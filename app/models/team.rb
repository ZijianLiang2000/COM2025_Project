class Team < ApplicationRecord

    # Team model
    # |_ id (Generated and Validates defaultly)
    # |_ teamName (Must exist, Validates names)
    # |_ apiId (Must exist and corresponds to a RapidAPI NBA team ID, Validates to be unique and presence. Different with database team ID)

    nbaTeams = ["Atlanta Hawks","Boston Celtics","Brooklyn Nets","Charlotte Hornets",
        "Chicago Bulls","Cleveland Cavaliers","Dallas Mavericks","Denver Nuggets","Detroit Pistons","Golden State Warriors","Houston Rockets",
        "Indiana Pacers","Los Angeles Clippers","Los Angeles Lakers","Memphis Grizzlies","Miami Heat","Milwaukee Bucks","Minnesota Timberwolves",
        "New Orleans Pelicans","New York Knicks","Oklahoma City Thunder","Orlando Magic","Philadelphia 76ers","Phoenix Suns","Portland Trail Blazers",
        "Sacramento Kings","San Antonio Spurs","Toronto Raptors","Utah Jazz","Washington Wizards"]

    has_and_belongs_to_many :games
    has_and_belongs_to_many :users
    validates :teamName, uniqueness: true, presence: true, inclusion: { in: nbaTeams, message: "%{value} is not a valid team, please re-enter a NBA team" }
    validates :apiId, uniqueness: true, presence: true

    scope :user_teams, ->(user) {where(['user_id = ?', user.id])}
end
