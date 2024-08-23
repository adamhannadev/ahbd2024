class AddReferencesToSteps < ActiveRecord::Migration[7.1]
  def change
    add_reference :steps, :footwork, null: false, foreign_key: true
    add_reference :steps, :foot_position, null: false, foreign_key: true
  end
end
