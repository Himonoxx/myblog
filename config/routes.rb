Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'boards#index'
  get 'boards', to: 'boards#index'
  post 'boards', to: 'boards#create'
  get 'boards/new', to: 'boards#new'
  get 'boards/:id', to: 'boards#show'
  get 'boards/:id/edit', to: 'boards#edit'
  post 'boards/:id/destroy', to: 'boards#destroy'
  
end
