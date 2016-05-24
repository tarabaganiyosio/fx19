class CreateBas < ActiveRecord::Migration
  def change
    create_table :bas do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :body

      t.timestamps null: false
    end
  end
end
