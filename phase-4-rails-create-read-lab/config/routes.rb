Rails.application.routes.draw do
  get 'plants/index'
  get 'plants/show'
  get 'plants/create'
  get 'index/show'
  get 'index/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :plants
end
