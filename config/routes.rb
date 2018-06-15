Rails.application.routes.draw do

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }

  root 'tops#top'
  get "admintops#top"

  get 'products/search'
  get 'products/ranking'
  scope :admins do
    resources :products, only: [:new, :create, :edit, :update, :destroy, :index]
  end
  resources :products, only: [:show]

  scope :admins do
    resources :genres, only: [:create,:destroy, :index]
  end

end
