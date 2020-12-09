class Game < ApplicationRecord
    # presence would validate whether attribute exists
    #uniqueness would validate whether attribute isn't redundant
    # deleted presence and uniqueness function for 'id'
    has_and_belongs_to_many :teams
    validates :homeTeamName, presence: true
    validates :awayTeamName, presence: true
    validates :gameDate, presence: true
end
