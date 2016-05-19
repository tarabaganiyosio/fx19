class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :body
      t.string :category

      t.timestamps null: false
    end
  end
end
