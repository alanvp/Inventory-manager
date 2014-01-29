class CategoryController < ApplicationController

	def index
		@categories = Category.all

	end

	def show
		id = params[:id]
		@category = Category.find_by(id: id)
	end

end
