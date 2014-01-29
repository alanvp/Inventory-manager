class Category < ActiveRecord::Base
  has_many :prod_cats
  has_many :products, through: :prod_cats
end
