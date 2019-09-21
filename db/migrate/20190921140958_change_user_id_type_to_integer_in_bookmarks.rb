class ChangeUserIdTypeToIntegerInBookmarks < ActiveRecord::Migration[5.2]
  def change
    change_column :bookmarks, :user_id, :integer
  end
end
