Rails.application.routes.draw do
  get '/login', to: 'sessions#login', as: 'login'
<<<<<<< HEAD
<<<<<<< HEAD
  get '/logout', to: 'sessions#login', as: 'logout'
  get '/auth/github', as: 'github_auth'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :reflection]
=======
  get '/logout', to: 'sessions#logout', as: 'logout'
  get '/auth/github', as: 'github_auth'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
>>>>>>> 2a16fa4d797491261f2057a1d0c8d90d8766b994
=======
  get '/logout', to: 'sessions#login', as: 'logout'
  get '/auth/github', as: 'github_auth'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :reflection]
>>>>>>> 4dc16e5ce3e121af88fe42033dbe2e527ce08dae
  resources :reflections, constraints: { id: /\d+/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reflections#index'
end
