class VideoGamesGenre < ApplicationRecord
  belongs_to :video_game
  belongs_to :genre
end
