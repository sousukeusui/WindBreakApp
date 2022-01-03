class CreateSlidingDoors < ActiveRecord::Migration[6.1]
  def change
    create_table :sliding_doors do |t|
      t.text :standard
      t.integer :g_width
      t.integer :g_height

      t.timestamps
    end
  end
end
