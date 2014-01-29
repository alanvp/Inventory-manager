class Product < ActiveRecord::Base
  has_many :prod_cats
  has_many :categories, through: :prod_cats

end
