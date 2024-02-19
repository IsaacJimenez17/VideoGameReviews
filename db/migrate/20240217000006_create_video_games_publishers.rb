class CreateVideoGamesPublishers < ActiveRecord::Migration[7.1]
  def change
    create_join_table(:video_games, :publishers, table_name: 'video_games_publishers') do |t|
      t.index :video_game_id
      t.index :publisher_id
    end
  end
end
