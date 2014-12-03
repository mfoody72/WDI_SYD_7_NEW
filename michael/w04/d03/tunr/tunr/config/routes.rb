Rails.application.routes.draw do
  
  resources :artists
  resources :mixtapes
  resources :songs

  devise_for :users

  root "welcome#index"

 
end
