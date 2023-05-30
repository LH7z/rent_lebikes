Rails.application.routes.draw do
  resources :bikes, only: [:index, :show, :new, :edit, :create]
  resources :bookings, only: [:index, :show, :new, :edit, :create]

  root to: "pages#home"
  devise_for :users
end
