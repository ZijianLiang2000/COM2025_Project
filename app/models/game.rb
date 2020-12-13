class Game < ApplicationRecord

    # Game model
    # |_ id (Generated and Validates defaultly)
    # |_ homeTeamName (Must exist, Validates names)
    # |_ awayTeamName (Must exist, Validates names)
    # |_ homeTeamScore (Can be nil, due to a game can be scheduled, but not yet played)
    # |_ awayTeamScore (Can be nil, due to a game can be scheduled, but not yet played)
    # |_ gameDate (Must exist)

    # Game model has and belongs to many teams, which is a Many-to-Many association.
    # Due to a Game can have many teams (which can be redirected to a home team and an away team)
    # and a Team can have many games
    has_and_belongs_to_many :teams
    
    # All NBA Team names to validate home team name and away team name to be real NBA team names. 
    nbaTeams = ["Atlanta Hawks","Boston Celtics","Brooklyn Nets","Charlotte Hornets",
        "Chicago Bulls","Cleveland Cavaliers","Dallas Mavericks","Denver Nuggets","Detroit Pistons","Golden State Warriors","Houston Rockets",
        "Indiana Pacers","Los Angeles Clippers","Los Angeles Lakers","Memphis Grizzlies","Miami Heat","Milwaukee Bucks","Minnesota Timberwolves",
        "New Orleans Pelicans","New York Knicks","Oklahoma City Thunder","Orlando Magic","Philadelphia 76ers","Phoenix Suns","Portland Trail Blazers",
        "Sacramento Kings","San Antonio Spurs","Toronto Raptors","Utah Jazz","Washington Wizards"]

    validates :homeTeamName, presence: true, inclusion: { in: nbaTeams, message: "%{value} is not a valid team, please re-enter a NBA team" }
    validates :awayTeamName, presence: true, inclusion: { in: nbaTeams, message: "%{value} is not a valid team, please re-enter a NBA team" }
    # Game model validates gameDate value, because it cannot be nil, but different teams may have games on same date
    validates :gameDate, presence: true

end
