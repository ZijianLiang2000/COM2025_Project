# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
welcome = Game.where(id: 1).first
# 
welcome.delete if welcome
# Home team Id 1 would be Atlanta Hawks, away team Id 2 will be Boston Celtics
games = Game.create([homeTeamName: 'BostonCeltics', awayTeamName: 'AtlantaHawks', homeTeamScore: 112, awayTeamScore: 107, gameDate: '2020-02-08'])