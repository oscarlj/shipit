class Office < ApplicationRecord
  belongs_to :company
  has_many :employees
  has_many :packages
end
