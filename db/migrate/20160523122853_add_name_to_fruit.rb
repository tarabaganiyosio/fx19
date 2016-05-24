class AddNameToFruit < ActiveRecord::Migration
  def change
    add_column :fruits, :name, :string
    add_column :fruits, :image, :string
    add_column :fruits, :image_cache, :string
  end
end
