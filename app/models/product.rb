class Product < ActiveRecord::Base
  attr_accessible :bolt_pattern, :colour, :company, :description, :diameter, :name, :offset, :price, :stock_quantity, :type, :width
  
  belongs_to:lineItem
  belongs_to:product

end
