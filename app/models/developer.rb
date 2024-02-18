class Developer < ApplicationRecord
  has_many :video_games, through: :video_games_developers

  validates :name, presence: true
end
