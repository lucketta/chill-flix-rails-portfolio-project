class AddShowIdToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :show_id, :integer
  end
end
