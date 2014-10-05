class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :box_id
      t.integer :user_id
      t.string :name
      t.float :total_value

      t.timestamps
    end
  end
end
