Rails.application.routes.draw do
  
  get 'participations/crete'
  get 'participations/destroy'
  get 'events/new'
  get 'events/create'
  get 'events/index'
  get 'events/show'
  get 'events/update'
  get 'events/destroy'
  devise_for :users
  resources :events do
  	resources :participations, only: [:create, :show, :index, :destroy]
  end

  root 'events#index'

end
