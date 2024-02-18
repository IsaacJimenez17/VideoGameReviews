class CreateVideoGamesDevelopers < ActiveRecord::Migration[7.1]
  def change
    create_join_table :video_games, :developers do |t|
      t.index :video_game_id
      t.index :developer_id
    end
  end
end
