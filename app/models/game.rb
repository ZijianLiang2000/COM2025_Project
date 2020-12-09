class Game < ApplicationRecord
    # presence would validate whether attribute exists
    #uniqueness would validate whether attribute isn't redundant
    # deleted presence and uniqueness function for 'id'
    has_and_belongs_to_many :teams, primary_key: :id, foreign_key: :teamId
    validates :id, uniqueness: true
    validates :teamId, presence: true
    validates :homeTeamName, presence: true
    validates :awayTeamName, presence: true
    validates :gameDate, presence: true
end
