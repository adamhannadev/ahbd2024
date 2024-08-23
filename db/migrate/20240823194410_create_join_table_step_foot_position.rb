class CreateJoinTableStepFootPosition < ActiveRecord::Migration[7.1]
  def change
    create_join_table :steps, :foot_positions do |t|
      # t.index [:step_id, :foot_position_id]
      # t.index [:foot_position_id, :step_id]
    end
  end
end
