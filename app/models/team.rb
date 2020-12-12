class Team < ApplicationRecord
    has_and_belongs_to_many :games
    has_and_belongs_to_many :users
    validates :teamName, uniqueness: true, presence: true
    validates :apiId, uniqueness: true, presence: true

    scope :user_teams, ->(user) {where(['user_id = ?', user.id])}
end
