class AddRankToUser < ActiveRecord::Migration
  
  def up
    add_column :users, :rank, :integer
    change_column :users, :rank, :string, :null => false
  end
 
  def down
    remove_column :users, :rank
  end
end
