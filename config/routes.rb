Rails.application.routes.draw do

# USER ROUTES
  get '/' => 'users#index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

# JARS ROUTES
  get 'jars/index'

  get 'jars/show'

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
