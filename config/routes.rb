Rails.application.routes.draw do


  get '/events' => 'events#all'

  get '/events/:id' => 'events#one'


end
