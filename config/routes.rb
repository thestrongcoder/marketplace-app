Rails.application.routes.draw do
  devise_for :users
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "pages#welcome", as: "root"

  get "/podcast", to: "pages#podcast", as: "podcast"

  get "/about", to: "pages#about", as: "about"


  # create new product
  get "/product/new", to: "product#new", as: "new_product"
  post "/product", to: "product#create", as: "product_create"

  # show product
  get '/product', to: 'product#index', as: 'products'

    #show product list
    get '/mylist', to: 'mylist#index', as: 'mylist'

  # show individual product
  get '/product/:id', to: 'product#show', as: 'product'


  # order product
  get "/order", to: "order#new", as: "new_order" 

  # completed order
  get "/orders/complete", to:"order#complete", as: "complete_order"

  # webhook order
  post "/orders/webhook", to: "order#webhook"

  # view my orders
  get "/orders/myorder", to: "order#my_order", as: "my_order"
  get "/users/:id/orders", to: "user#orders", as: "users_orders"
  
  # delete product from list 
  delete "product/:id", to: "product#destroy"
  
  # edit for trade
  get "/product/:id/edit", to: "product#edit", as: "edit_product"
  put "/product/:id", to: "product#update"
  patch "/product/:id", to: "product#update", as: "products_item"
  

end
