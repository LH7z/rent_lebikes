Rails.application.routes.draw do

controller3
  resources :bikes, only: [:index, :show, :new, :edit, :create]
  root to: "bikes#home"
  devise_for :users
>>>>>>> origin
