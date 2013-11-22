class Product < ActiveRecord::Base
  attr_accessible :bolt_pattern, :colour, :company, :description, :diameter, :name, :offset, :price, :stock_quantity, :width, :image, :category_id
  
  has_many :line_items
  has_many :orders, :through => :line_items
  belongs_to :category
  
  validates :bolt_pattern, :colour, :company, :description, :diameter, :name, :offset, :price, :stock_quantity, :width, :image, :category_id, presence: true
  validates :diameter, :offset, :price, :stock_quantity, :width, numericality: true

end
