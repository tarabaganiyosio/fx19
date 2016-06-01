class AddCommentsCountToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :comments_count, :integer, :default => 0
  end
  
  def self.down
    remove_column :qustions, :comments_count
  end
end
