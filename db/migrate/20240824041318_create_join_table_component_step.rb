class CreateJoinTableComponentStep < ActiveRecord::Migration[7.1]
  def change
    create_join_table :components, :steps do |t|
      # t.index [:component_id, :step_id]
      # t.index [:step_id, :component_id]
    end
  end
end
