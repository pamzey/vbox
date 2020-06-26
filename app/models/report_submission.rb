class ReportSubmission < ApplicationRecord
		belongs_to :locations
	    has_one :report_values
	    has_many :reports
	    has_many :users
end
