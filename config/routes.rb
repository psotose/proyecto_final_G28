Rails.application.routes.draw do
  devise_for :users
  
  resources :real_estate_brokers do
      resources :opinions, except: [:index, :show]
  end
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
