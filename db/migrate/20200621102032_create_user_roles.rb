class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
   
      create_table :user_roles do |t|
      
      
      t.timestamps


    end
  end
end
