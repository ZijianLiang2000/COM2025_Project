# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
welcome = Game.where(id: 1).first
welcome.delete if welcome
welcome2 = Team.where(id:1)
welcome2.delete if team

games = Game.create([ homeTeamName: "Philadelphia 76ers", awayTeamName: "Boston Celtics", gameWinnerId: 2, homeTeamScore: 94, awayTeamScore: 102, gameDate: "2020-08-21"])
teams = Team.create([teamName: "Atlanta Hawks"])