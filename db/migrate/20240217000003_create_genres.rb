class CreateGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :genres do |g|
      g.string :name
    end
  end
end
