class AddBasCountToBas < ActiveRecord::Migration
  
  def self.up
    add_column :bas, :bas_count, :integer, :default => 0
  end
  
  def self.down
    remove_column :bas, :bas_count
  end
end
