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

  get 'products/search' => 'product#search'
  get 'products/ranking'
  get 'contacts/finished'

  get "/users/:id/unsubsc" => "users#unsubsc", as: "users_unsubsc"




resources :users do 
   member do
    resources :carts , only: [:create, :index, :update, :destroy]


  end
  resources :contacts, only: [:new, :create]
  resources :orders, only: [:index, :show]
  get '/decision' => "order#decision"
end

  get "admins/products/stocks" =>"products#stock" ,as: "admins_product_stocks"
  get "/products/:id" => "products#show", as: "product"
  get "/genre/:id" => "products#genre", as: "products_genre"
  delete "/admins/products/:id" => "products#destroy",as: "destroy_product"
  delete "/admins/products/:product_id/discs/:id" => "discs#destroy",as: "destroy_disc"


  



  
  
  

  
  resources :destinations, only: [:new, :create,:edit, :update, :destroy]

  


   




  scope :admins do
    resources :contacts, only: [:index,:show,:update]
    get 'contacts_finished'=>'contacts#finished'
    resources :products, only: [:new, :create, :edit, :update, :index] do
       resources :discs, only: [:new,:create,:edit,:update,:destroy,:show] do
       
          resources :tracks, only: [:new,:create,:edit,:update,:destroy,:show]
  end
  end
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

end

