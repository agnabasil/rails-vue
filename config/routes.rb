# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  get 'app', to: 'users#index'
end
