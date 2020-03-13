Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :users do
      resources :real_estate_brokers do
        resources :opinions
      end  
    end
  end  
  namespace :admin do
    resources :users do 
      resources :opinions
    end
  end    
  namespace :admin do
    resources :real_estate_brokers do 
      resources :opinions
    end
  end    
  devise_for :users , controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  resources :real_estate_brokers do
      resources :opinions, except: [:index, :show]
  end
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
