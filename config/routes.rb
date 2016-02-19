Rails.application.routes.draw do

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

  get 'jars/:id' => 'jars#show', as: :jar

  get 'jars/new'

  get 'jars/create'

  get 'jars/edit'

  get 'jars/update'

  get 'jars/destroy'

# MEMORY ROUTES
  get 'mems/index'

  get 'mems/show'

  get 'mems/new'

  get 'mems/create'

  get 'mems/edit'

  get 'mems/update'

  get 'mems/destroy'


end
