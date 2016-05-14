class AddCreateFromFieldToPost < ActiveRecord::Migration
  def change
    add_column :posts, :created_from, :string
  end
end
