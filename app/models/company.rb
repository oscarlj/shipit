class Company < ApplicationRecord
	has_many :offices, dependent: :destroy
	has_many :employees, through: :offices
end
