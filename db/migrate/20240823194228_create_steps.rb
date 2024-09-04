class CreateSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :steps do |t|
      t.string :count
      t.string :foot
      t.string :foot_position
      t.string :footwork
      t.timestamps
    end
  end
end
