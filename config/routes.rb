Rails.application.routes.draw do
  root "sites#index"
  resources :pages
  resources :sites
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
