Rails.application.routes.draw do
  root to: 'fukabori_contents#index'
  devise_for :users
  
  resources :fukabori_contents, only: [:index, :new, :create, :show, :edit]
  patch 'fukabori_contents/:id' => 'fukabori_contents#update', as: 'update_fukabori_content'
  delete 'fukabori_contents/:id' => 'fukabori_contents#destroy', as: 'destroy_fukabori_content'

  resources :users, only: [:show, :edit, :create]
  patch 'users/:id' => 'users#update', as: 'update_user'
  
  resources :fukabori_texts, only: [:new, :create, :show, :edit]
  patch 'fukabori_texts/:id' => 'fukabori_texts#update', as: 'update_fukabori_text'
  delete 'fukabori_texts/:id' => 'fukabori_texts#destroy', as: 'destroy_fukabori_text'
  
  resources :points, only: [:index, :new, :show, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
