Rails.application.routes.draw do
  devise_for :users
  get 'companies/index'

  resources :packages
  
  root 'packages#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
