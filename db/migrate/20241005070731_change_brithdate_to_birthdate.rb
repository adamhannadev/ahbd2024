class ChangeBrithdateToBirthdate < ActiveRecord::Migration[7.1]
  def change
    rename_column :contacts, :brithdate, :birthdate
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
