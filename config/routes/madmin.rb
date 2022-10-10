# frozen_string_literal: true

# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :services
  resources :notifications
  resources :boards
  resources :announcements
  resources :users
  namespace :active_storage do
    resources :variant_records
  end
  root to: 'dashboard#show'
end
