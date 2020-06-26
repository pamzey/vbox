class CreateRuleBases < ActiveRecord::Migration[5.2]
  def change
     create_table :rule_bases do |t|
	
	
      t.timestamps
    end
  end
end
