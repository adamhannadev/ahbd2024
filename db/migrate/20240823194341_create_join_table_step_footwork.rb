class CreateJoinTableStepFootwork < ActiveRecord::Migration[7.1]
  def change
    create_join_table :steps, :footworks do |t|
      # t.index [:step_id, :footwork_id]
      # t.index [:footwork_id, :step_id]
    end
  end
end
