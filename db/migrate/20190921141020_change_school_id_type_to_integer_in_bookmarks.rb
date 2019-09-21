class ChangeSchoolIdTypeToIntegerInBookmarks < ActiveRecord::Migration[5.2]
  def change
    change_column :bookmarks, :school_id, :integer
  end
end
