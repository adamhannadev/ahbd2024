class CreateSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :steps do |t|
      t.string :count
      t.string :foot
      t.references :foot_position, null: false, foreign_key: true
      t.references :footwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
