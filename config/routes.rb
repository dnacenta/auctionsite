Rails.application.routes.draw do
  get  '/',             to: 'products#index_all'
  get  '/products/:id', to: 'products#show_product'
  post '/products/:id', to: 'bids#create', as: :create_bid
  resources :users do
    resources :products, except: [:index_all]
  end
end
