class CreateComponents < ActiveRecord::Migration[7.1]
  def change
    create_table :components do |t|
      t.string :name
      t.boolean :role
      t.string :level
      t.string :dance
      t.text :footwork
      t.boolean :sfoot
      t.boolean :efoot
      t.string :timing
      t.text :partnering

      t.timestamps
    end
  end
end
