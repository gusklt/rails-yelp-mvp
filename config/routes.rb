Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new'
  get 'restaurants/:id/show', to: 'restaurants#show'
  get 'restaurants/review'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
