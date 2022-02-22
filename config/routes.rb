Rails.application.routes.draw do

  resources :users, only: [:create, :edit, :update]

  post '/comments' => 'comments#new'

  post '/tickets' => 'tickets#new'

  get '/events' => 'events#all'

  get '/events/:id' => 'events#one'

  post 'user_token' => 'user_token#create'

  get '/users/current' => 'users#current'

end
