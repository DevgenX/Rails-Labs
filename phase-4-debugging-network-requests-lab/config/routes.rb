Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :delete]

  delete 'toys/:id', to: 'toys#destroy'
end
