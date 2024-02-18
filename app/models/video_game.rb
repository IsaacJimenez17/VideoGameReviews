class VideoGame < ApplicationRecord
  has_one :developer, through: :video_games_developers
  has_one :publisher, through: :video_games_publishers

  has_many :genres, through: :video_games_genres
  has_many :platforms, through: :video_games_platforms

  validates :title, presence: true
  validates :description, presence: true
end
