Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :profiles
  resources :books
  resources :authors
  resources :categories
  resources :comments, only: [:delete, :show]  

  delete 'comments/:id', to: 'comments#destroy'

  root to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
