Vacaytracker::Application.routes.draw do
  get "sessions/new"

  get "users/new"

  resources :manages
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => "site#home"

   match "manages" => "site#manage"
   match "set" => "site#set"
   match "report" => "site#report"

   match '/signup' => 'users#new'
   match '/signin' => 'sessions#new'
   match '/signout' => 'sessions#destroy'
   
 #   match "manage" => "site#manage"
 #  match "magages" => "manages#index"


end
