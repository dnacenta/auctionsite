Rails.application.routes.draw do
  get '/', to: 'products#index'
  resources :users do
    resources :products, except: [:index]
  end
end
