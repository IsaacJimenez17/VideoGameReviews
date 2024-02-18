class CreateDevelopers < ActiveRecord::Migration[7.1]
  def change
    create_table :developers do |d|
      d.string :name
    end
  end
end
