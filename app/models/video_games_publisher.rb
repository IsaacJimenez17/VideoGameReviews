class VideoGamesPublishers < ApplicationRecord
  belongs_to :video_game
  belongs_to :publisher
end
