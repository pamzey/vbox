class PersonBio < ApplicationRecord
	has_one :users
	has_one :recipients
end
