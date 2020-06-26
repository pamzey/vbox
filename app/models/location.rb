class Location < ApplicationRecord
	has_one :report_submissions
    belongs_to :emr_types
    has_many :location_user_maps
end
