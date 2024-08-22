class RemovFootPositionFromSteps < ActiveRecord::Migration[7.1]
  def change
    remove_column :steps, :foot_position, :string
    remove_column :steps, :footwork, :string
  end
end
