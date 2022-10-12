# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :boards
  draw :madmin
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'

    namespace :madmin do
      resources :impersonates do
        post :impersonate, on: :member
        post :stop_impersonating, on: :collection
      end
    end
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :boards, only: %i[new create edit update]
  patch '/boards/:id/sort', to: 'boards#sort', as: 'board_sort'
  resources :announcements, only: [:index]
  root to: 'home#index'
end
