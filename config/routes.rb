Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :reviews, only: [:show, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reviews, only: [:show, :index, :create]

  # get '/dog_houses/:dog_house_id/reviews'
  # get '/dog_houses/:dog_house_id/reviews/:review_id'
end
