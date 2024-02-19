class VideoGamesPlatform < ApplicationRecord
  belongs_to :video_game
  belongs_to :platform
end
