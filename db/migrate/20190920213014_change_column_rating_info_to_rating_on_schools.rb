class ChangeColumnRatingInfoToRatingOnSchools < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :rating_info, :rating
  end
end
