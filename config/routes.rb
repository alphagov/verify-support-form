Rails.application.routes.draw do
  root 'support#index'

  post 'select_support', to: 'support#select_support'

  get '/problem', to: 'support#problem'
  post '/problem', to: 'support#create'

  get '/question', to: 'support#question'
  post '/question', to: 'support#create'

  get '/thanks', to: 'support#thanks'
 end
