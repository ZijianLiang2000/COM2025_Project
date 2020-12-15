class HomeController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  # find_team method will search NBA Team by API request, with a nickname of the team, eg:'Hornets'
  # and returns JSON type of Team 'Charlotte Hornets' data, which can be further filtered.
  def find_team(nickname)
    request_api(
      "https://api-nba-v1.p.rapidapi.com/teams/nickName/#{nickname}"
    )
  end

  # find_team_by_ID method will initially take in NBA Team database ID, eg:'27'
  # which translates the database ID into the corresponding team's API ID
  # then search NBA Team by API request, with an API ID of the team, eg:'31'
  # and returns JSON type of Team 'San Antonio Spurs' data, which can be further filtered.
  def find_team_by_ID(id)
    apiHash = {"1" => "1", "2" => "2", "3" => "4",
      -       "5" => "6", "6" => "7", "7" => "8", "8" => "9",
      -        "9" => "10", "10" => "11", "11" => "14", "12" => "15",
      -         "13" => "16", "14" => "17", "15" => "19","16" => "20",
      -          "17" => "21", "18" => "22", "19" => "23", "20" => "24",
      -           "21" => "25", "22" => "26", "23" => "27", "24" => "28",
      -            "25" => "29", "26" => "30", "27" => "31", "28" => "38",
      -             "29" => "40", "30" => "41"}
      -    apiId = apiHash[id]
    request_api(
      "https://api-nba-v1.p.rapidapi.com/teams/teamId/#{apiId}"
    )
  end

  # find_PlayerId method will search NBA Player by API request, with a playerID of the Player, eg:'1'
  # and returns JSON type of a player's data, which can be further filtered.
  def find_PlayerID(playerId)
    request_api("https://api-nba-v1.p.rapidapi.com/players/playerId/#{playerId}") 
  end

  # The main method for driving the home#search view, which takes in Nickname or ID of Team,
  # (due to team's nickname "Trail Blazer" couldn't be searched by API, so translates that team's search function into ID)
  # then returns first available team (with alert if no teams found), further filters can be done
  # 
  def search
    # Teams will return requested api of "https://api-nba-v1.p.rapidapi.com/teams/nickName/Hornets"
    if params[:linkToApiId] != nil
      teams = find_team_by_ID(params[:linkToApiId])
    elsif params[:team] != "Trail Blazers"
      teams = find_team(params[:team])
    else
      params[:blazersTeamID] = 29
      teams = find_team_by_ID(params[:blazersTeamID])
    end
    # unless teams
    #   flash[:alert] = 'Team not found'
    #   return render action: :home
    # end

    # @team parameter will be first item under teams api
    @team = teams["api"]["teams"].first

    if @team == nil
      flash[:alert] = 'Team not found, please try again'
      return render action: :home
    end
    # Creates variable to be corresponding players and standings of team
    @player = find_player(@team['teamId'])
    @teamStandings = find_standings(@team['teamId'],2019)
  end

  # find_standings method will search NBA Team's standing by year by API request, with a team ID of the team, eg:'1' and standing year (eg:'2019')
  # and returns JSON type of Team 'Charlotte Hornets' 2019-2020 seasonal data, which can be further filtered.
  def find_standings(team_id, season_year)
    @year = season_year
    @teamId = team_id
    request_api("https://api-nba-v1.p.rapidapi.com/standings/standard/#{season_year}/teamId/#{team_id}") 
  end

  # Finds player by API requests, taking in team ID, returns all players under the team.
  def find_player(team_id)
    # query = URI.encode("#{team_id}")
    request_api("https://api-nba-v1.p.rapidapi.com/players/teamId/#{team_id}") 
  end
  
  # The engine for using API requests, implementing RapidAPI as platform to parse corresponding URL including keys input,
  # into JSON type, if no response, return nil.
  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        # 'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
        'X-RapidAPI-Key' => '81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e'
        # KEY is: 81f17623camshd2b99a09f5ec7b9p1cf6aejsn282365a0a05e
      }
    )

    return nil if response.status != 200

    JSON.parse(response.body)
  end
end
