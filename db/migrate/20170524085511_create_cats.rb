class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.float :rating, default: 0
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
