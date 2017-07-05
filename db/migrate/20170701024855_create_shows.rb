class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :air_date
      t.integer :air_time
      t.string :description
      t.integer :network_id
    end
  end
end
