class AddImageToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :image, :string
  end
end
