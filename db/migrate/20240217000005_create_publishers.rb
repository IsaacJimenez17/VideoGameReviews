class CreatePublishers < ActiveRecord::Migration[7.1]
  def change
    create_table :publishers do |p|
      p.string :name
    end
  end
end
