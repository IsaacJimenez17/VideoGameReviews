class CreateVideoGamesGenres < ActiveRecord::Migration[7.1]
  def change
    create_join_table :video_games, :genres do |t|
      t.index :video_game_id
      t.index :genre_id
    end
  end
end
