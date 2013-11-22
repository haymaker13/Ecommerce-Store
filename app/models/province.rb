class Province < ActiveRecord::Base
  attr_accessible :gst, :hst, :name, :pst
  has_many:customers
  
  validates :gst, :hst, :name, :pst, presence: true
  validates :hst, :gst, :pst, numericality: true
  validates :name, uniqueness: true
end
