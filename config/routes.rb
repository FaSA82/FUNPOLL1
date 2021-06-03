# frozen_string_literal: true

Rails.application.routes.draw do 

  root 'pages#index'

  get '/pages', to: 'pages#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
