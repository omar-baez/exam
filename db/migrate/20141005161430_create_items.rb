class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.integer :box_id
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
