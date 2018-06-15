Rails.application.routes.draw do

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  get 'orders/index'

  get 'orders/address'

  get 'orders/payment'

  get 'orders/decision'

  get 'orders/create'

  get 'payments/index'

  get 'payments/new'

  get 'payments/create'

  get 'payments/edit'

  get 'payments/update'

  get 'payments/destroy'

  get 'regions/index'

  get 'regions/edit'

  get 'regions/update'

  get 'carts/show'

  get 'carts/add_product'

  get 'labels/index'

  get 'labels/new'

  get 'labels/create'

  get 'labels/edit'

  get 'labels/update'

  get 'labels/destroy'

  get 'discs/new'

  get 'discs/create'

  get 'discs/edit'

  get 'discs/update'

  get 'discs/destroy'

  get 'contacts/new'

  get 'contacts/create'

  get 'contacts/index'

  get 'contacts/finished'

  get 'contacts/show'

  get 'contacts/update'

  get 'destinations/new'

  get 'destinations/create'

  get 'destinations/edit'

  get 'destinations/update'

  get 'destinations/destroy'

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
  get "admintops/top"

  get 'products/search'
  get 'products/ranking'
  scope :admins do
    resources :products, only: [:new, :create, :edit, :update, :destroy, :index]
  end
  resources :products, only: [:show]

  scope :admins do
    resources :genres, only: [:create,:destroy, :index]
  end

scope :admins do
    resources :labels, only: [:create,:destroy, :index]
  end

end
