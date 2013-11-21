class LineItem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity

  belongs_to :product
  belongs_to :order
  
  validates :order_id, :price, :product_id, :quantity, presence: true
  validates :order_id, :product_id, uniqueness: true
  validates :order_id, :product_id, :price, :qunatity, numericality: true
  

end
