class AddMultipleToDoors < ActiveRecord::Migration[6.1]
  def change
    add_column :doors, :standard_w, :integer
    add_column :doors, :standard_h, :integer
  end
end
