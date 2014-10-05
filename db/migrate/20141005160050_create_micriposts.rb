class CreateMicriposts < ActiveRecord::Migration
  def change
    create_table :micriposts do |t|
      t.integer :box_id
      t.integer :user_id
      t.string :name
      t.float :total_value

      t.timestamps
    end
  end
end
