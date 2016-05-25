class AddReplyIdToReply < ActiveRecord::Migration
  def change
    add_column :replies, :question_id, :integer
  end
end
