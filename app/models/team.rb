class Team < ApplicationRecord
    has_and_belongs_to_many :games
    validates :teamName, uniqueness: true, presence: true
    validates :apiId, uniqueness: true, presence: true
end
