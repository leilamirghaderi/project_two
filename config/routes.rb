Rails.application.routes.draw do
  get 'sessions/create'
  resources :reflections, constraints: { id: /\d+/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reflections#index'
end
