class CreateEvas < ActiveRecord::Migration
  def change
    create_table :evas do |t|
      t.integer :user_id
      t.integer :broker_id
      t.text :body
      t.string :title

      t.timestamps null: false
    end
  end
end
