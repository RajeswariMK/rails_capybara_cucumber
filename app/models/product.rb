class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description
  attr_protected :title, :price, :description
end
