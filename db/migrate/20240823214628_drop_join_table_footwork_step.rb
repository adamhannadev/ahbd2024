class DropJoinTableFootworkStep < ActiveRecord::Migration[7.1]
  def change
    drop_table :footworks_steps
    drop_table :foot_positions_steps
  end
end
