class Team < ApplicationRecord
    has_many :games, primary_key: :teamId, foreign_key: :gamesPlayedId, foreign_key: :gamesToBePlayedId
    validates :teamId, uniqueness: true, presence :true
    validates :teamName, uniqueness: true, presence :true
    validates :gamesPlayedId, uniqueness: true
    validates :gamesToBePlayedId, uniqueness: true
end
