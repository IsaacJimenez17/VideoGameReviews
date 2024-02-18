class Platform < ApplicationRecord
  has_many :video_games, through: :video_games_platforms

  validates :name, presence: true
end
