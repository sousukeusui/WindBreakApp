class AddMultipleToTwoDoors < ActiveRecord::Migration[6.1]
  def change
    add_column :two_doors, :standard_w, :integer
    add_column :two_doors, :standard_h, :integer
  end
end
