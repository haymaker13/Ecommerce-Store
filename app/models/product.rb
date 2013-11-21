class Product < ActiveRecord::Base
  attr_accessible :bolt_pattern, :colour, :company, :description, :diameter, :name, :offset, :price, :stock_quantity, :width, :image, :category_id
  
  has_many :line_items
  has_many :orders, :through => :line_items
  belongs_to :category

end
