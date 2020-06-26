class Foregnkeys < ActiveRecord::Migration[5.2]
  def change
  	add_reference :location_user_maps, :user, foreign_key: true
  	 add_reference :users, :person_bio, foreign_key: true
  	 add_reference :user_roles, :user, foreign_key: true
  	 add_reference :user_roles, :role, foreign_key: true
  	 add_reference :report_submissions, :user, foreign_key: true
  	  add_reference :recipients, :report, foreign_key: true  	
     add_reference :report_submissions, :report, foreign_key: true
      add_reference :report_submissions, :location, foreign_key: true
     add_reference :report_values, :report_submission, foreign_key: true
      add_reference :rule_bases, :rule, foreign_key: true
     add_reference :rule_operands, :rule, foreign_key: true
     add_reference :rules, :report_indicator, foreign_key: true
      add_reference :locations, :emr_type, foreign_key: true
      add_reference :location_user_maps, :location, foreign_key: true
      add_reference :recipients, :person_bio, foreign_key: true 
      add_reference :report_indicators,:report, foreign_key: true  
  end
end
