class AddMultipleToSlidingDoors < ActiveRecord::Migration[6.1]
  def change
    add_column :sliding_doors, :standard_w, :integer
    add_column :sliding_doors, :standard_h, :integer
  end
end
