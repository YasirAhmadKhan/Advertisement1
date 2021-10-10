Rails.application.routes.draw do
  resources :users, only: [:new, :create, :index, :show]
  resources :session, only: [:new, :create, :destroy]
# end
   post 'session/new'
   get 'session/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'book#index'
  get 'book/index'
  get 'book/list'
  post 'book/create'
  get 'book/new'
  get 'book/edit'
  post 'book/edit'
  patch 'book/update'
  get 'book/show'
  get 'book/destroy'

end

