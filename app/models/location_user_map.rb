class LocationUserMap < ApplicationRecord
	has_many :users
	belongs_to :locations
end
