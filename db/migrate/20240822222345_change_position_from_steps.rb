class ChangePositionFromSteps < ActiveRecord::Migration[7.1]
  def change
    remove_column :steps, :position, :string
    add_column :steps, :count, :string
    add_column :steps, :foot_position, :string
    add_column :steps, :footwork, :string
  end
end
