Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # post 'api/test', to: 'application#test'

  # by nesting, each route path is automatically prefixed with api/, each controller must be defined within app/controllers/api/, and each controller class name must begin with Api::.
  namespace :api, defaults: { format: :json } do
    resources :users, only: :create
    resource :session, only: [:show, :create, :destroy]
    resources :recipes, only: [:index, :show]
    resources :notes, only: [:index, :create, :update, :destroy]
    resources :ratings, only: [:create, :destroy] 
    resources :saved_recipes, only: [:index, :create, :destroy]
  end

  get '*path', to: "static_pages#frontend_index"

end
