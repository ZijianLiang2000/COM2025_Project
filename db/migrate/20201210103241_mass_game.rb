require 'csv'

class MassGame < ActiveRecord::Migration[5.1]
  CSV_FILE = "C:/Users/11047/PycharmProjects/KnapsackProblem/‪game_file.csv".freeze
  def importCSV
    games = CSV.read(CSV_FILE)
    PrepareDatabase.call(games)
  end
end
