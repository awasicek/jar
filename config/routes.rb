Rails.application.routes.draw do

  # SESSIONS ROUTES

  get '/logout' => 'sessions#destroy', as: :logout

  resources :sessions, only: [:new, :create]

# USER ROUTES
  get 'users/index' => 'users#index', as: :users

  get "users/new" => "users#new", as: :new_user

  get 'users/:id' => 'users#show', as: :user

  post 'users/index' => 'users#create', as: :create_user

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy'

# JARS ROUTES
  get 'jars/index' => 'jars#index', as: :jars

  get 'jars/new' => 'jars#new', as: :new_jar

  get 'jars/:id' => 'jars#show', as: :jar

  post 'jars/index' => 'jars#create', as: :create_jar

  get 'jars/:id/edit' => 'jars#edit', as: :edit_jar

  patch 'jars/:id' => 'jars#update'

  delete 'jars/:id' => 'jars#destroy'

# MEMORY ROUTES
  get 'mems/index' => 'mems#index', as: :mems

  get 'mems/:id' => 'mems#show', as: :mem

  get 'mems/new'

  get 'mems/create'

  get 'mems/edit'

  get 'mems/update'

  get 'mems/destroy'


end
