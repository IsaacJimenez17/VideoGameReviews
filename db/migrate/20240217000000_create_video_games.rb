class CreateVideoGames < ActiveRecord::Migration[7.1]
  def change
    create_table :video_games do |v|
      v.string :title
      v.string :description
      v.date :release_date
    end
  end
end
