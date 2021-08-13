Rails.application.routes.draw do
  devise_for :users
  root to: 'results#index'
  get 'show', to: 'pages#show'
  get "/results", to: "results#index" 
  get "/results/:id", to: "results#show"
    resources :results

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
