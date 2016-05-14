class RenameImageFieldFromPostImage < ActiveRecord::Migration
  def change
    add_column :post_images, :image_file_name, :string
  end
end
