Rails.application.routes.draw do
  get 'students', to: 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'students/grades', to: 'students#grades'

  get 'highest-grade', to: 'students#highest_grade'
end