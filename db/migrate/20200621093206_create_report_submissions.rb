class CreateReportSubmissions < ActiveRecord::Migration[5.2]
  def change
     create_table :report_submissions do |t|

      t.time      :time
      t.datetime  :date_submitted
      t.datetime  :date_ended
      t.boolean   :retired, null: false, default: 1
      t.timestamps
    end
  end
end
