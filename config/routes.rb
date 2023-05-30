Rails.application.routes.draw do
  root to: "bikes#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bikes, only [:index, :show, :new, :edit]
  # Defines the root path route ("/")
  # root "articles#index"
end
