class AddBuilderToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :Builder, :string
  end
end
