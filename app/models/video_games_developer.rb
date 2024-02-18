class VideoGamesDevelopers < ApplicationRecord
  belongs_to :video_game
  belongs_to :developer
end
