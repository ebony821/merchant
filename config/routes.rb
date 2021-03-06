Rails.application.routes.draw do


  # get 'shop' => 'storefront#index'

  # get 'about' => 'storefront#about'

   get '/shop' => 'store_front#index'

   get '/about' => 'store_front#about'

  devise_for :users
  namespace :admin do
    resources :products
    resources :brands
    resources :categories

  end

resource :cart, only: [:edit, :update, :destroy]
resources :line_items, only: [:create, :destroy]
resources :orders, only: [:new,:create, :show]

  # root 'admin/products#index'

  root 'store_front#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
