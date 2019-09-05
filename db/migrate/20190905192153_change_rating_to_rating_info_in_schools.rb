class ChangeRatingToRatingInfoInSchools < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :rating, :rating_info
  end
end