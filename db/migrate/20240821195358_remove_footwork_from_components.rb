class RemoveFootworkFromComponents < ActiveRecord::Migration[7.1]
  def change
    remove_column :components, :footwork, :string
  end
end
