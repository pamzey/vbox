class ReportIndicator < ApplicationRecord
	 has_one :rules
	 belongs_to :reports
end
