class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :user_id
      t.string :school_id

      t.timestamps
    end
  end
end
