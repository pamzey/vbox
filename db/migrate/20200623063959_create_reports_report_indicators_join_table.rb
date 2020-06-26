class CreateReportsReportIndicatorsJoinTable < ActiveRecord::Migration[5.2]
  def change
  create_join_table :report_indicators do |t|
     t.bigint :indicators_id
     t.bigint :report_id
  end
  end
end
