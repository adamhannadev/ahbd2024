class CreateFigures < ActiveRecord::Migration[7.1]
  def change
    create_table :figures do |t|
      t.string :figure_name
      t.text :figure_description

      t.timestamps
    end
  end
end
