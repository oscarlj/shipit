Rails.application.routes.draw do
  get 'companies/index'

  resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
