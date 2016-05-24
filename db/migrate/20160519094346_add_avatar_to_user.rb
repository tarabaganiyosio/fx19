class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :avatar_cache, :string
    add_column :users, :remove_avatar, :string
  end
end
