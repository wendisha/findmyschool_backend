class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :type
      t.string :grade_range
      t.string :address
      t.string :district_id
      t.string :website
      t.string :rating

      t.timestamps
    end
  end
end
