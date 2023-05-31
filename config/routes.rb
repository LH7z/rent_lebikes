Rails.application.routes.draw do
  resources :bikes, only: [:index, :show, :new, :edit, :create] do
    resources :bookings, only: [:new, :create, :edit]
  end

  resources :bookings, only: :show
  root to: "pages#home"
  devise_for :users
  resources :bikes, only: [:destroy]
end
