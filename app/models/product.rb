class Product < ActiveRecord::Base
  validates :name, :price, :presence => true
end
