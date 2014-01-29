ManagingProducts::Application.routes.draw do
  
  root to: 'site#index'

  get '/product', to: 'product#index', as: :all_products
  get '/product/new', to: 'product#new', as: :new_product
  get '/product/show/:id', to: 'product#show', as: :show_product
  get '/product/edit/:id', to: 'product#edit', as: :edit_product
  get '/product/delete/:id', to: 'product#delete', as: :delete_product 	

  get '/category', to: 'category#index', as: :all_categories
  get '/category/new', to: 'category#new', as: :new_category

  
end
