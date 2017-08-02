class RenamePhoneNumberToRestaurants < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :phone_number, :string
  end
end
