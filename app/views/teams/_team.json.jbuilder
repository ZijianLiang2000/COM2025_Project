json.extract! team, :id, :teamName, :gamesPlayedId, :gamesToBePlayedId, :created_at, :updated_at
json.url team_url(team, format: :json)
