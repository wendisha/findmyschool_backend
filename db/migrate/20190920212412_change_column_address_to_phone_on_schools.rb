class ChangeColumnAddressToPhoneOnSchools < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :address, :phone
  end
end
