class User < ApplicationRecord
	belongs_to :person_bios
	belongs_to :location_user_maps
	belongs_to :report_submissions
	has_many :user_roles
	has_many :roles, through: :user_roles
end
