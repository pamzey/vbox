class Rule < ApplicationRecord
	  belongs_to :report_indicators
	  has_one :rule_bases
	  has_one :rule_operands	 
end
