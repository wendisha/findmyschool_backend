class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :school_type, :city
  end
end
