class AddImageFieldsToPostTable < ActiveRecord::Migration
  def change
    add_column :posts, :image, :string
    add_attachment :posts, :image
  end
end
