class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
  
  has_many:products
  has_many:lineItems
  belongs_to:customer
end
