class AddReviewToShow < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :review_id, :integer
  end
end
