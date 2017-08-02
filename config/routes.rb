Rails.application.routes.draw do
  get 'reviews/create'

  get 'reviews/new'

  get 'restaurants/index'

  get 'restaurants/new'

  get 'restaurants/create'

  get 'restaurants/show'

  get 'index/new'

  get 'index/create'

  get 'index/show'

  get "restaurants/:id", to: "restaurants#show"
  get "reviews/:id", to: "reviews#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
end
