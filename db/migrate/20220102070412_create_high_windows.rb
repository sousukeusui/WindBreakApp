class CreateHighWindows < ActiveRecord::Migration[6.1]
  def change
    create_table :high_windows do |t|
      t.text :standard
      t.integer :g_width
      t.integer :g_height

      t.timestamps
    end
  end
end
