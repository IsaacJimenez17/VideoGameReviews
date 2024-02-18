class CreateVideoGamesPlatforms < ActiveRecord::Migration[7.1]
  def change
    create_join_table :video_games, :platforms do |t|
      t.index :video_game_id
      t.index :platform_id
    end
  end
end
