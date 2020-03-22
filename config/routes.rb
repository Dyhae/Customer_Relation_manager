# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root to: 'customers#index'

  # resources :customers
  get '/customers/id/:id', to: 'customers#show', as: 'customer'

  get '/customers/missing_email', to: 'customers#missing_email'

  get '/customers/alphabetized', to: 'customers#alphabetized'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
