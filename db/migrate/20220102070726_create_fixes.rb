class CreateFixes < ActiveRecord::Migration[6.1]
  def change
    create_table :fixes do |t|
      t.integer :g_width
      t.integer :g_height

      t.timestamps
    end
  end
end
