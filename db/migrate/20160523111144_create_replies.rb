class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :ba_id
      t.text :body

      t.timestamps null: false
    end
  end
end
