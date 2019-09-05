class ChangeRatingInfoDatatypeToStringInSchools < ActiveRecord::Migration[5.2]
  def change
    change_column :schools, :rating_info, :string
  end
end