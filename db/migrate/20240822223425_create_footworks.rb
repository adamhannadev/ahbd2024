class CreateFootworks < ActiveRecord::Migration[7.1]
  def change
    create_table :footworks do |t|
      t.string :footwork

      t.timestamps
    end
  end
end
