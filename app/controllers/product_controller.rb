class ProductController < ApplicationController

	def index
		@products = Product.all

	end

	def show
		id = params[:id]
		@product = Product.find_by(id: id)
	end

	def new
	end

	def create
		product = params.require(:new_prod).permit(:name, :description, :price, :cats)

		cats = product["cats"].split(',')
		@product = Product.new(name: product["name"], description: product["description"], price: product["price"])
		cats.each do |cat|
			category = Category.find_by(name: cat) || Category.new(name: cat)

			@product.categories << category
		end
    @product.save

		redirect_to root_path

	end

end
