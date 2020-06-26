class CreateReportValues < ActiveRecord::Migration[5.2]
  def change
     create_table :report_values do |t|	 
	     t.decimal    :values 
      t.timestamps
    end
  end
end
