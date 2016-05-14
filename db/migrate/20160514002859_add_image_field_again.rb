class AddImageFieldAgain < ActiveRecord::Migration
  def change
    add_column :post_images, :image, :string
  end
end
