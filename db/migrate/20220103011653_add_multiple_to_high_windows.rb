class AddMultipleToHighWindows < ActiveRecord::Migration[6.1]
  def change
    add_column :high_windows, :standard_w, :integer
    add_column :high_windows, :standard_h, :integer
  end
end
