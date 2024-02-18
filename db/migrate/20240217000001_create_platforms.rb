class CreatePlatforms < ActiveRecord::Migration[7.1]
  def change
    create_table :platforms do |p|
      p.string :name
    end
  end
end
