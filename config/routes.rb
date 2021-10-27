Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  root "restaurants#index"
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end

  #get 'restaurants/new'
  #get 'restaurants/create'
  get 'restaurants/show'
  #get 'restaurants/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
