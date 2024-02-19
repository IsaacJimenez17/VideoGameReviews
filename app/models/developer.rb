class Developer < ApplicationRecord
  has_many :video_games, through: :video_games_developer

  validates :name, presence: true
end
