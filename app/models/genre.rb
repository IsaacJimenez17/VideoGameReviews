class Genre < ApplicationRecord
  has_many :video_games_genres
  has_many :video_games, through: :video_games_genres

  validates :name, presence: true
end
