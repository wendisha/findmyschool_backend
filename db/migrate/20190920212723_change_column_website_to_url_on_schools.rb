class ChangeColumnWebsiteToUrlOnSchools < ActiveRecord::Migration[5.2]
  def change
    rename_column :schools, :website, :url
  end
end
