Rails.application.routes.draw do
  get '/', to: 'products#index_all'
  resources :users do
    resources :products, except: [:index_all]
  end
end
