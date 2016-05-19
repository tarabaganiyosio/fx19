class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile, :string
    add_column :users, :image, :string
    add_column :users, :image_cache, :string
    add_column :users, :remove_image, :string
  end
end
