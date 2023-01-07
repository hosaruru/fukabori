Rails.application.routes.draw do
  root to: 'fukabori_contents#index'
  
  resources :fukabori_contents, only: [:index, :new, :create, :show, :edit]
  patch 'fukabori_contents/:id' => 'fukabori_contents#update', as: 'update_fukabori_content'
  delete 'fukabori_contents/:id' => 'fukabori_contents#destroy', as: 'destroy_fukabori_content'

  resources :users, only: [:show, :edit, :create]
  patch 'users/:id' => 'users#update', as: 'update_user'
  
  resources :fukabori_texts, only: [:new, :create, :show, :edit]
  patch 'fukabori_texts/:id' => 'fukabori_texts#update', as: 'update_fukabori_text'
  delete 'fukabori_texts/:id' => 'fukabori_texts#destroy', as: 'destroy_fukabori_text'

  resources :posts, only: [:index, :new, :create, :show] 
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
  patch 'posts/:id' => 'posts#update', as: 'update_post'
  
  resources :points, only: [:new, :show, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
