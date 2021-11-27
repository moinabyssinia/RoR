Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/pages', to: 'pages#index'
  get '/pages/:id', to: 'pages#show' # directs requests to the 'show' action

end
