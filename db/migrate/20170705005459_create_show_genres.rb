class CreateShowGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :show_genres do |t|
      t.integer :show_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
