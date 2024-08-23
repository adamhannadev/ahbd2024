class RemoveFootPositionFromSteps < ActiveRecord::Migration[7.1]
  def change
    remove_reference :steps, :foot_position, null: false, foreign_key: true
    remove_reference :steps, :footwork, null:false, foreign_key: true
  end
end
