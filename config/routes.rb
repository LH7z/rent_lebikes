Rails.application.routes.draw do
  resources :bookings, only: [:show, :index]
  resources :bikes, only: [:index, :show, :new, :edit, :create] do
    resources :bookings, only: [:new, :create, :edit]
  end

  root to: "pages#home"
  devise_for :users
  resources :bikes, only: :destroy
  resources :bookings, only: :destroy

end
