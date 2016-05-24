class AddUsernameToBa < ActiveRecord::Migration
  def change
    add_column :bas, :username, :string
  end
end
