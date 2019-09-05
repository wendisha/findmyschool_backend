class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :type
      t.integer :district_id
      t.string :grade_range
      t.string :address 
      t.string :website
      t.integer :rating

      t.timestamps
    end
  end
end
