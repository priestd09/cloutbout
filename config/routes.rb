Cloutbout::Application.routes.draw do
  resources :team

  root :to => 'home#index'

  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'

  match '/signout' => 'sessions#destroy', :as => :signout
  match '/signin' => 'sessions#new', :as => :signin

  match ':controller(/:action(/:id))'
end
