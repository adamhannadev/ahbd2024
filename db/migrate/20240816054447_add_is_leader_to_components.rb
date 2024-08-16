class AddIsLeaderToComponents < ActiveRecord::Migration[7.1]
  def change
    add_column :components, :is_leader, :boolean
  end
end
