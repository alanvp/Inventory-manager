ManagingProducts::Application.routes.draw do
  
  root to: 'site#index'

  get '/product', to: 'product#index', as: :all_products
  get '/product/new', to: 'product#new', as: :new_product
  get '/product/show/:id', to: 'product#show', as: :show_product
  get '/product/edit/:id', to: 'product#edit', as: :edit_product
  get '/product/delete/:id', to: 'product#delete', as: :delete_product 	
  post '/product/create', to: 'product#create', as: :create_product

  get '/category', to: 'category#index', as: :all_categories
  get '/category/new', to: 'category#new', as: :new_category
  get '/category/create', to: 'category#create', as: :create_category
  get '/category/show/:id', to: 'category#show', as: :show_category
  get '/category/edit/:id', to: 'category#edit', as: :edit_category
  get '/category/delete/:id', to: 'category#delete', as: :delete_category 	

  
end

