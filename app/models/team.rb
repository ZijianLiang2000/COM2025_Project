class Team < ApplicationRecord

    # Team model
    # |_ id (Generated and Validates defaultly)
    # |_ teamName (Must exist, Validates names)
    # |_ apiId (Must exist and corresponds to a RapidAPI NBA team ID, Validates to be unique and presence. Different with database team ID)

    has_and_belongs_to_many :games
    has_and_belongs_to_many :users
    validates :teamName, uniqueness: true, presence: true
    validates :apiId, uniqueness: true, presence: true

    scope :user_teams, ->(user) {where(['user_id = ?', user.id])}
end
