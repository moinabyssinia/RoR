Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/pages', to: 'pages#index'
  get '/pages/new', to: 'pages#new'
  get '/pages/:id', to: 'pages#show', as: 'page' # directs requests to the 'show' action
  post '/pages', to: 'pages#create' 
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
  delete '/pages/:id', to: 'pages#destroy'

end
