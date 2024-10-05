class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :null => false
      t.string :phone, :null => true
      t.date :brithdate, :null => true
      t.string :role, :default => "Prospect"

      t.timestamps
    end
  end
end
