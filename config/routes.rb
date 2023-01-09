Rails.application.routes.draw do

  root to: 'homes#index'
  devise_for :users

  resources :pictures, only: [:index, :new, :create]
  
  resources :contents, only: [:index, :new, :create, :show, :edit, :confirm]
  patch 'contents/:id' => 'contents#update', as: 'update_content'
  delete 'contents/:id' => 'contents#destroy', as: 'destroy_content'
  post 'contents/complete'
  post 'contents/confirm'

  resources :users, only: [:show, :edit, :create]
  patch 'users/:id' => 'users#update', as: 'update_user'
  
  resources :texts, only: [:new, :create, :show, :edit]
  patch 'texts/:id' => 'texts#update', as: 'update_text'
  delete 'texts/:id' => 'texts#destroy', as: 'destroy_text'
  
  resources :points, only: [:index, :new, :show, :create]
  
  resources :carry_contents, only: [:index, :new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
