Rails.application.routes.draw do

  get 'contributors/index' => 'contributors#index', as: :contributors

  get 'contributors/show'

  get 'jars/:jar_id/contributors/new' => 'contributors#new', as: :new_contributor

  post 'jars/:jar_id/contributors' => 'contributors#create', as: :create_contributor

  get 'contributors/edit'

  get 'contributors/update'

  get 'contributors/destroy'

  resources :viewers

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
  get 'jars/:jar_id/mems/index' => 'mems#index', as: :mems

  get 'jars/:jar_id/mems/new' => 'mems#new', as: :new_mem

  get 'jars/:jar_id/mems/:id' => 'mems#show', as: :mem

  post 'jars/:jar_id/mems/index' => 'mems#create', as: :create_mem

  get 'jars/:jar_id/mems/:id/edit' => 'mems#edit', as: :edit_mem

  patch 'jars/:jar_id/mems/:id' => 'mems#update'

  delete 'jars/:jar_id/mems/:id' => 'mems#destroy'


end
