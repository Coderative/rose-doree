Rails.application.routes.draw do
  resources :items, except: [:show]
  get "/items/update", to: "items#update_quality"
  get "/items/reset", to: "items#reset"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
