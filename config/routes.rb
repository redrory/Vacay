Vacaytracker::Application.routes.draw do
  get "prompts/create"
  get "sessions/new"
  get "users/new"

  #resources :manages
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :employees, :only => [:create, :destroy, :edit, :editVacay, :update]
  resources :prompts

  root :to => "site#home"
  
  match '/show' => 'users#show'
  match '/about' => 'site#about'
  match '/plans' => 'site#plans'
  match '/new' => 'employees#new'
  match "all" => "users#allemploy"
  match "set2" => "users#set"
  match "set" => "users#new_prompt"
  match "report" => "site#report"
  match "prompt" => "site#prompt"
  match '/signup' => 'users#new'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'
  
  
  match '/vacay_report' => 'users#vacay_report' 
  match '/sick_report' => 'users#sick_report'
  match '/vs_report' => 'users#vs_report'

  match '/test' => 'users#test'
  match '/editVacay' => 'employees#editVacay'
   match '/editSick' => 'employees#editSick'


   
 #   match "manage" => "site#manage"
 #  match "magages" => "manages#index"


end
