class ChangeColumnGradeRangeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :grade_range, :state
  end
end
