class CreateReportIndicators < ActiveRecord::Migration[5.2]
  def change
       create_table :report_indicators do |t|
	      t.string    :name	  
 
      t.timestamps
    end
  end
end
