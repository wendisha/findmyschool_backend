class ChangeTypeToSchoolTypeInSchools < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :type, :school_type
  end
end
