class Publisher < ApplicationRecord
  has_many :video_games, through: :video_games_publishers

  validates :name, presence: true
end
