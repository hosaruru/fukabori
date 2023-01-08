Rails.application.routes.draw do

  get 'carry_contents/index'
  get 'carry_contents/new'
  get 'carry_contents/create'
  root to: 'contents#index'
  devise_for :users

  resources :pictures, only: [:index, :new, :create]
  
  resources :contents, only: [:index, :new, :create, :show, :edit]
  patch 'contents/:id' => 'contents#update', as: 'update_content'
  delete 'contents/:id' => 'contents#destroy', as: 'destroy_content'

  resources :users, only: [:show, :edit, :create]
  patch 'users/:id' => 'users#update', as: 'update_user'
  
  resources :texts, only: [:new, :create, :show, :edit]
  patch 'texts/:id' => 'texts#update', as: 'update_text'
  delete 'texts/:id' => 'texts#destroy', as: 'destroy_text'
  
  resources :points, only: [:index, :new, :show, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
