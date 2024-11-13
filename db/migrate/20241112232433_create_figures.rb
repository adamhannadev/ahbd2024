class CreateFigures < ActiveRecord::Migration[7.1]
  def change
    create_table :figures do |t|
      t.string :level
      t.string :name
      t.string :manref
      t.string :dance
      t.string :style

      t.timestamps
    end
  end
end
