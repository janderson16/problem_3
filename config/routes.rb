Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/my_reviews/:id' => 'users#my_reviews'
  resources :books, only: [:show, :index]
end
