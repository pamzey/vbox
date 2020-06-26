class CreateRuleOperands < ActiveRecord::Migration[5.2]
  def change
    create_table :rule_operands do |t|
	  t.datetime  :created_at
      t.datetime  :updated_at
      t.timestamps
    end
  end
end
