Vacaytracker::Application.routes.draw do
  get "prompts/create"

  get "plans/new"

  get "sessions/new"

  get "users/new"

  #resources :manages
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :employees, :only => [:create, :destroy, :edit, :update]
  resources :prompts

  root :to => "site#home"
  
  match '/show' => 'users#show'
  match '/new' => 'pages#new'
  
  match '/about' => 'site#about'
  match '/plans' => 'site#plans'
  match 'prompts/create' => 'prompts#create'

   match "manages2" => "manages#show"
   #match "manages" => "users#allemploy"
   match "all" => "users#allemploy"
   match "set" => "users#set"
   match "set2" => "prompts#create"
   

   match "report" => "site#report"

   match "prompt" => "site#prompt"
   


   match '/signup' => 'users#new'
   match '/signin' => 'sessions#new'
   match '/signout' => 'sessions#destroy'
   
 #   match "manage" => "site#manage"
 #  match "magages" => "manages#index"


end
