json.extract! game, :id, :homeTeamName, :awayTeamName, :gameWinnerId, :homeTeamScore, :awayTeamScore, :gameDate, :created_at, :updated_at
json.url game_url(game, format: :json)
