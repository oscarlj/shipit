class Package < ApplicationRecord
  belongs_to :company
  belongs_to :office
  before_validation :order_n
  validates :order, :presence => true, :uniqueness => true



  def order_n
  	if self.order == nil

  	   self.order = rand(100000000000..999999999999)
 	end
  end
end
