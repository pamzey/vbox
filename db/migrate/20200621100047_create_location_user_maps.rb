class CreateLocationUserMaps < ActiveRecord::Migration[5.2]
  def change
    
      create_table :location_user_maps do |t|     
      t.boolean  :assigned, null: false

      t.timestamps
    end
  end
end
