class CreateEmrTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :emr_types do |t|
      t.string    :name, null: false
      t.string    :description  
      t.boolean   :retired, null: false, default: 1
      t.timestamps
    end
  end
end

