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
  get "admintops/top"

  get 'products/search'
  get 'products/ranking'
  get 'contacts/finished'
  get "/products/:id" => "products#show", as: "product"


  
  resources :users, only: [:edit, :update, :show, :destroy]


  resources :contacts, except:[:destroy]



  scope :admins do
    resources :products, only: [:new, :create, :edit, :update, :destroy, :index]
  end


  scope :admins do
    resources :genres, only: [:create,:destroy, :index]
  end

  scope :admins do
    resources :labels, only: [:create,:destroy, :index]
  end


  resources :products do 
    resources :reviews
  end


  scope :admins do
    resources :discs, only: [:new,:create,:edit,:update,:destroy]
  end

end

