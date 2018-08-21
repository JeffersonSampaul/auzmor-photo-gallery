# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items
  resources :products
  resources :users
  get 'images/display'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Auzmor::PhotoGallery => '/'

  get 'auzmor/images/:name.:ext', to: 'images#display'
  # get 'auzmor/images/:name', to: 'images#display'
end
