class UserRole < ApplicationRecord
	belongs_to :users
	belongs_to :roles
end