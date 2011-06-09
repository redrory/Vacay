Vacaytracker::Application.routes.draw do
  get "plans/new"

  get "sessions/new"

  get "users/new"

  resources :manages
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :employees, :only => [:create, :destroy]

  root :to => "site#home"
  
  match '/show' => 'users#show'
  match '/new' => 'pages#new'
  
  match '/about' => 'site#about'
  match '/plans' => 'site#plans'

   match "manages2" => "manages#show"
   match "manages" => "users#allemploy"
    match "all" => "users#allemploy"
   match "set" => "site#set"
   match "report" => "site#report"

   match '/signup' => 'users#new'
   match '/signin' => 'sessions#new'
   match '/signout' => 'sessions#destroy'
   
 #   match "manage" => "site#manage"
 #  match "magages" => "manages#index"


end
