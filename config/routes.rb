Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    member do
      patch :status
    end
    resources :propositions, except: [:index, :show] do
      resources :votes, only: :create
    end
  end
  get "dashboard", to: "pages#dashboard"
  get "participants", to: "pages#participants"
end
