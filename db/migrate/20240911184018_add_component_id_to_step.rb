class AddComponentIdToStep < ActiveRecord::Migration[7.1]
  def change
    add_reference :steps, :component, null: false, foreign_key: true
  end
end
