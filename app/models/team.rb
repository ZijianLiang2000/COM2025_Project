class Team < ApplicationRecord
    has_and_belongs_to_many :games, primary_key: :teamId, foreign_key: :gameId
    validates :teamId, uniqueness: true, presence: true
    validates :teamName, uniqueness: true, presence: true
    validates :gameId, presence: true
end
