json.extract! game, :id, :homeTeamId, :awayTeamId, :homeTeamName, :awayTeamName, :gameWinnerId, :homeTeamScore, :awayTeamScore, :gameDate, :created_at, :updated_at
json.url game_url(game, format: :json)
