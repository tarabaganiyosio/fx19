class AddBaRankToUser < ActiveRecord::Migration
  def change
    add_column :users, :ba_rank, :string
  end
end
