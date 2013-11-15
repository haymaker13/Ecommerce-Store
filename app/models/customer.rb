class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :first_name, :last_name, :postal_code, :province_id

  has_many:orders
  belongs_to:province

end
