Rails.application.routes.draw do
  resources :bikes, only: [:index, :show, :new, :edit, :create] do
    resources :bookings, only: [:show, :new, :create, :edit]
  end
  root to: "pages#home"
  devise_for :users
  resources :bikes, only: [:destroy]
end
