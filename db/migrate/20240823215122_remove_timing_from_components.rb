class RemoveTimingFromComponents < ActiveRecord::Migration[7.1]
  def change
    remove_column :components, :timing, :string
  end
end
