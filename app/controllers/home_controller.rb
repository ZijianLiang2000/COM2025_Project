class HomeController < ApplicationController
  def home
  end

  # find_team method will search NBA Team by api, with a nickname of team, eg:'Hornets'
  def find_team(nickname)
    request_api(
      "https://api-nba-v1.p.rapidapi.com/teams/nickName/#{nickname}"
    )
  end

  def search
    # Teams will return requested api of "https://api-nba-v1.p.rapidapi.com/teams/nickName/Hornets"
    teams = find_team(params[:team])

    unless teams
      flash[:alert] = 'Team not found'
      return render action: :home
    end
    
    # @team parameter will be first item under teams api
    @team = teams["api"]["teams"].first
    @player = find_player(@team['teamId'])
  end

  def find_player(team_id)
    # query = URI.encode("#{team_id}")
    request_api("https://api-nba-v1.p.rapidapi.com/players/teamId/#{team_id}")
    
  end
  
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
