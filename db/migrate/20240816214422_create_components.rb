class CreateComponents < ActiveRecord::Migration[7.1]
  def change
    create_table :components do |t|
      t.string :name
      t.string :role
      t.string :level
      t.string :dance
      t.text :partnering
      t.timestamps
    end
  end
end
