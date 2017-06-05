class AddRatingToVote < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :rating, :integer
  end
end
