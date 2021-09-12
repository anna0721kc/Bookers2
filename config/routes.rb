Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]

  get 'home/about' => 'homes#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
