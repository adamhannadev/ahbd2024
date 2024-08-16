class RemoveRoleFromComponents < ActiveRecord::Migration[7.1]
  def change
    remove_column :components, :role
  end
end
