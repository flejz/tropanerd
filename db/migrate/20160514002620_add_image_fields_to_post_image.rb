class AddImageFieldsToPostImage < ActiveRecord::Migration
  def change
    remove_column :post_images, :image
    remove_column :post_images, :image_file_name
    add_attachment :post_images, :image
  end
end
