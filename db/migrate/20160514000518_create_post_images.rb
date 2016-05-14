class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.text :description
      t.string :image
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
