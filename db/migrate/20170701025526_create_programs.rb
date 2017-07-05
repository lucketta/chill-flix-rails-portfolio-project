class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.integer :user_id
      t.integer :show_id
      t.boolean :favorite, default: 0

      t.timestamps
    end
  end
end
