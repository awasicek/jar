Rails.application.routes.draw do

# HOMEPAGE ROUTES
  get '/' => 'homes#index', as: :home

  get 'homes/:id' => 'homes#show', as: :user_home

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

  get 'jars/personal' => 'jars#show_my_jars', as: :show_my_jars

  get 'jars/:id' => 'jars#show', as: :jar

  post 'jars/index' => 'jars#create', as: :create_jar

  get 'jars/:id/edit' => 'jars#edit', as: :edit_jar

  patch 'jars/:id' => 'jars#update'

  delete 'jars/:id' => 'jars#destroy'

# MEMORY ROUTES
  get 'mems/index' => 'mems#index', as: :mems

  get 'mems/new' => 'mems#new', as: :new_mem

  get 'mems/:id' => 'mems#show', as: :mem

  post 'mems/index' => 'mems#create', as: :create_mem

  get 'mems/:id/edit' => 'mems#edit', as: :edit_mem

  patch 'mems/:id' => 'mems#update'

  delete 'mems/:id' => 'mems#destroy'


end
