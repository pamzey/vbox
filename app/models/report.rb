class Report < ApplicationRecord
	has_many :recipients
	belongs_to :report_submissions
    has_many :report_indicators
end
