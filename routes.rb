Rails.application.routes.draw do

  root 'pages#home'
  get '/main' => 'pages#main'
  get '/signup' => 'customers#new'

  #resources :customers #do
    #resources :calendars
  #end



  resources :calendars

  get '/signupbus' => 'businesses#new'
  resources :businesses

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/compose' => 'events#new'

  resources :events

  #this is an ajax post request
  post 'calendars_controller/calendarChange', to: 'calendars_controller#calendarChange'
