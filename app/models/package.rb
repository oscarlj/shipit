class Package < ApplicationRecord
  belongs_to :company
  belongs_to :office
  validates :order, :presence => true, :uniqueness => true
end
