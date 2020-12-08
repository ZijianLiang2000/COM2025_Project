class Game < ApplicationRecord
    # presence would validate whether attribute exists
    #uniqueness would validate whether attribute isn't redundant
    # deleted presence and uniqueness function for 'id'
    # validates :id, presence: true
    belongs_to :team, primary_key: :id, foreign_key: :homeTeamId, foreign_key: :awayTeamId
    validates :id, uniqueness: true
    validates :homeTeamId, presence: true
    validates :awayTeamId, presence: true
    validates :homeTeamName, presence: true
    validates :awayTeamName, presence: true
    validates :gameDate, presence: true
end
