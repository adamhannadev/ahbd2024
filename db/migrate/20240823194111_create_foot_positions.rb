class CreateFootPositions < ActiveRecord::Migration[7.1]
  def change
    create_table :foot_positions do |t|
      t.string :name

      t.timestamps
    end
  end
end
