Rails.application.routes.draw do


  get '/events' => 'events#all'

  get '/events/:id' => 'events#one'

  post 'user_token' => 'user_token#create'
  
  get '/users/current' => 'users#current'

end
