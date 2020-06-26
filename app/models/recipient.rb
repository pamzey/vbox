class Recipient < ApplicationRecord
	belongs_to :person_bios
	belongs_to :reports
end
