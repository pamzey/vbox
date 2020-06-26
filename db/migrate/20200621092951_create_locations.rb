
class CreateLocations < ActiveRecord::Migration[5.2]
  def change
      create_table :locations  do |t|
      t.string    :name, null: false
      t.string    :latitude
      t.string    :longitude
      t.integer   :parent_location
      t.boolean   :active, null: false, default: 1
     
    
      t.timestamps
    end
  end

  def down
    drop_table  :locations
  end
end




